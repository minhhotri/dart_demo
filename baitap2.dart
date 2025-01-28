import 'dart:io';

main() {
  // nhap thong tin
  stdout.write("Nhập tên sản phẩm: ");
  String tenSanPham = stdin.readLineSync()!;

  stdout.write("Nhập số lượng mua sản phẩm: ");
  int soLuongMua = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập đơn giá sản phẩm: ");
  double donGia = double.parse(stdin.readLineSync()!);

  // tinh thanh tien ban dau
  double thanhTien = soLuongMua * donGia;

  // app dung giam gia
  double giamGia = 0;
  if (thanhTien >= 1000000) {
    giamGia = thanhTien * 0.1;
  } else if (thanhTien >= 500000) {
    giamGia = thanhTien * 0.05;
  }

  // tinh thue
  double thue = (thanhTien - giamGia) * 0.08;

  double thanhToanCuoi = (thanhTien - giamGia) + thue;

  //in ket qua
  print("\n Kết quả:");
  print("Tên Sản Phẩm: $tenSanPham");
  print("Số lượng mua Sản Phẩm: $soLuongMua");
  print("Đơn giá Sản Phẩm: $tenSanPham");

  print("Thành tiền: $thanhTien");
  print("Giam giáá: $giamGia");
  print("Thuế VAT: $thue");
  print("Tổng thanh toán cuối cùngcùng: $thanhToanCuoi");
}
