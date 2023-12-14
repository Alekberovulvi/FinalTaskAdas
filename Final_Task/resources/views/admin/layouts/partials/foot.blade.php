 <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('admin/assets/lib/chart/chart.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/easing/easing.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/tempusdominus/js/moment.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/tempusdominus/js/moment-timezone.min.js')}}"></script>
    <script src="{{ asset('admin/assets/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('admin/assets/js/main.js')}}"></script>

    <script>
      function deleteConfirmation(event, text = false) {
         event.preventDefault();
          const swalWithBootstrapButtons = Swal.mixin({
  customClass: {
    confirmButton: "btn btn-success",
    cancelButton: "btn btn-danger"
  },
  buttonsStyling: false
});
swalWithBootstrapButtons.fire({
  title: "Silmək istədiyinə əminsən ?",
  text: "Geri dönüşü olmayan bir yoldasan aa baxda məsləhət sənindi...",
  icon: "warning",
  showCancelButton: true,
  confirmButtonText: "Sil getsin!",
  cancelButtonText: "İnsafa gəldin sə silmə!",
  reverseButtons: true
}).then((result) => {
  if (result.isConfirmed) {
    swalWithBootstrapButtons.fire({
      title: "Qurtuldun",
      text: "Həll olundu məsələ",
      icon: "success"
    });
    event.target.submit()
  } else if (
    result.dismiss === Swal.DismissReason.cancel
  ) {
    swalWithBootstrapButtons.fire({
      title: "İnsafli çıxdın",
      text: "Silmədim getdi! Başqası olsa siləcəkdim day sənsəndə ",
      icon: "error"
    });
  }
});
     }
    </script>

   