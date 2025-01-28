import 'dart:io';

void main() {
  // Nhập thông tin nhân viên
  stdout.write("Nhập họ tên nhân viên: ");
  String hoTen = stdin.readLineSync()!;

  stdout.write("Nhập số giờ làm việc: ");
  double soGioLam = double.parse(stdin.readLineSync()!);

  stdout.write("Nhập lương mỗi giờ: ");
  double luongMoiGio = double.parse(stdin.readLineSync()!);

  // Tính tổng lương ban đầu
  double tongLuong = soGioLam * luongMoiGio;

  // Thêm phụ cấp nếu làm hơn 40 giờ
  if (soGioLam > 40) {
    tongLuong += tongLuong * 0.2; // Thêm 20%
  }

  // Tính thuế thu nhập
  double thueThuNhap = 0;
  if (tongLuong > 10000000) {
    thueThuNhap = tongLuong * 0.1; // 10%
  } else if (tongLuong >= 7000000) {
    thueThuNhap = tongLuong * 0.05; // 5%
  }

  // Tính lương thực lãnh
  double luongThucLanh = tongLuong - thueThuNhap;

  // In kết quả
  print("\nKết quả:");
  print("Họ tên: $hoTen");
  print("Tổng lương trước thuế: ${tongLuong.toStringAsFixed(2)} VND");
  print("Thuế thu nhập: ${thueThuNhap.toStringAsFixed(2)} VND");
  print("Lương thực lãnh: ${luongThucLanh.toStringAsFixed(2)} VND");
}
