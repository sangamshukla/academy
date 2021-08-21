<div class="file_upload" style="padding-left:0px;">
    {{-- file upload --}}
    {{-- <label class="file">
      <input
        type="file"
        id="file"
        aria-label="example.pdf"
      />
      <span class="file-custom" name="pdf_path"></span>
    </label> --}}

    <div class="">
      <form enctype="multipart/form-data" id="upload_pdf">
          @csrf
          <label>
              <input class="btn btn-primary" style="background-color: #1D6771 !important"  type="file" onChange="$(this).closest('form').submit();" 
                accept="application/pdf"  
                name="pdf" id="profile_upload" style="cursor: pointer;">
          </label>
          <span class="text-muted"><p >(You can upload *pdf files only, maximum file size is 10MB).</p></span>
        <br/>
          {{-- <div>
              <button class="upload_btn" type="submit">Upload</button>
          </div> --}}
          <span class="text-danger" id="image-input-error"></span>
          <span class="text-primary" id="image-input-success"></span>
          {{-- <p>Upload Image</p> --}}
          <div style="display: none;" id="profile_pic_loader">
          <img src="{{asset('wa/assets/img/ajax-loader.gif')}}" alt="">
          <p><b>Please wait...</b></p>
          </div>
             <p class="text-danger" id="show_error_meessage_for_file"></p>
      </form>
  </div>
    {{-- /file upload --}}
  </div>

  <div>
    <ul class="list_pdf">
      {{-- pdfsss --}}
      <div id="listOfFiles"></div>
      
    </ul>
    <hr />
    <div class="card" style="width: 100%;">
      <p class="tile_card_comment">Comment</p>
      <div class="card-body">
        <div class="form-group">
          <label class="sr-only" for="message"
            >post</label
          >
          <textarea
            class="form-control"
            id="pdfMessage"
            rows="3"
            placeholder="Add your comment"
          ></textarea>
        </div>
      </div>
    </div>
    <div class="row mt-2">
      <div style="color:#1D6771;"class="form-group col-md-6">           
        <span>Points</span>
      <input type="number" style="width:38%;" class="form-control"  id="pointsPDF" placeholder="Points"/>  
    </div> 
    <div style="color:#1D6771;" style="float:right;" class="form-group col-md-6">           
      <span style="float: left; margin-left: 22%;">Due Date:</span>
        <input type="text" class="form-control" style="width:78%; float: right"  name="due_date" id="dueDateUploadFile" placeholder="Due Date">
      </div>
    </div>
 
    <hr />
    <div>
      <div class="share_block">
        <label class="container" data-toggle="modal" data-target="#exampleModal">
          <input
            type="checkbox"
          />
          <span class="checkmark" ></span>
          <span class="add_text"
            >Assign To All Students</span
          >
        </label>
        <label class="container"  data-toggle="modal" data-target="#exampleModal">
          <input
            type="checkbox"
          />
          <span
            class="checkmark"
            
          ></span>
          <span class="add_text"
            >Assign To Selected Students</span
          >
        </label>
      </div>
      <div>
      <button class="btn share_cta" id="saveUploadPDFHomeWork">
        Share
      </button>
      </div>