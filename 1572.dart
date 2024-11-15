class Solution {
  int diagonalSum(List<List<int>> mat) {
    int n = mat.length; // 행렬의 크기(n * n)
    int primaryDiagonalSum = 0; // 주대각선의 합
    int secondaryDiagonalSum = 0; // 부대각선의 합

    // 1. 주대각선과 부대각선의 합을 각각 계산함.
    for (int i = 0; i < n; i++) {
        // 주대각선의 요소는 항상 mat[i][i]
        primaryDiagonalSum += mat[i][i];
        // 부대각선의 요소는 항상 mat[i][n - 1 - i]
        secondaryDiagonalSum += mat[i][n - 1 - i];
    }

    // 2. 행렬 크기가 홀수일 경우, 중앙값이 중복으로 더해짐
    int centerValue = 0; // 중앙값 변수 초기화
    if (n % 2 == 1) {
        // 행렬 크기가 홀수일 때 중앙값은 mat[n / 2][n / 2]
        centerValue = mat[n ~/ 2][n ~/ 2];
    }

    // 3. 최종 합 계산
    int totalSum = primaryDiagonalSum + secondaryDiagonalSum - centerValue;

    // 4. 디버깅용 출력 (주석을 해제 하면 중간 계산값 확인)
    /*
    print('Primary Diagonal Sum: $primaryDiagonalSum');
    print('Secondary Diagonal Sum: $secondaryDiagonalSum');
    print('Center Value (if any): $centerValue');
    print('Total Sum: $totalSum');
    */

    return totalSum; // 최종결과 반환
  }

  void main() {
    //예제 행렬
    List<List<int>> mat = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

    //함수 호출 및 결과 출력
    print(diagonalSum(mat)); // 출력 25
  }
}
