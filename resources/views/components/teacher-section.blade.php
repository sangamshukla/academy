          <div class="row">
            <div class="col-lg-4" style="margin-top:12px; !important">
              <div class="card mt-5">
                <div class="card-body">
                  <div class="cover1">
                    <video controls class="video" width="600">
                      <source
                        src="https://riverisland.scene7.com/is/content/RiverIsland/c20171205_Original_Penguin_AW17_Video"
                        type="video/mp4"
                      />
                      <source
                        src="https://riverisland.scene7.com/is/content/RiverIsland/c20171205_Original_Penguin_AW17_Video_OGG"
                      />
                    </video>
                  </div>
                  <div class="video-text">
                    <p class="text-center">Video</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-8" style="margin-top:12px; !important">
              <div class="card teacher_detail mt-5">
                <!-- Card Header - Dropdown -->
                <div class="card-body mt-3">
                  <div class="d-flex justify-content-start">
                    <div class="teacher_img pr-4">
                      <img src="{{asset('wa/livesession/assets/img/user1.svg')}}" />
                    </div>
                    <div class="detail1 pr-4">
                      <p class="fist_pera">David Pettenson</p>
                      <p class="second_pera">
                        <span class="address_detail"
                          ><img src="{{asset('wa/livesession/assets/img/addresicon.svg')}}" /></span
                        ><span>United Nation</span>
                      </p>
                      <p class="fist_pera">Speaks</p>
                      <p class="second_pera">French,English</p>
                    </div>
                    <div class="payment_pera pr-4">
                      <p>Charges</p>
                      <p><span>£</span>20.00</p>
                      <p class="fist_pera">Speaks</p>
                      <p class="second_pera">French,English</p>
                    </div>
                  </div>
                  <div class="about_pera">
                    <p>About me-</p>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                      Mauris elementum aliquam viverra. Aliquam erat volutpat.
                      Mauris id sagittis tortor. Ut condimentum, arcu nec tempor
                      laoreet, ex quam tincidunt purus, sed placerat nulla ex
                      placerat lacus. Nullam quis lectus ac odio dictum tempor
                      ac vitae quam.

                      <a href="{{url('live-session-detail')}}" class="show_detail"
                        >View More</a
                      >
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <script>
              $(".cover1").on("click", function () {
  $(this).children().css({
    "z-index": 1,
    opacity: 1,
  });
  $(this).children().trigger("play");
});

$("video").on("click", function () {
  console.log("a");
});
</script>
