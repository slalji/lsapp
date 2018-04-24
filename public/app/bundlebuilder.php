 <!-- page content -->
 <script src="./app/js/bundlebuilder.js"></script>
 <div class="row">
              <div class="col-md-12 col-sm-22 col-xs-12">
                <div class="x_panel" style="height:600px;">
                  <div class="x_title" >
                    <h5>Bundle Builder</h5>                     
                  <div class="x_content">
                    <div class="row">
                        <!-- price element -->
                        <div class="col-md-4 col-sm-4 col-xs-8">
                          <div class="bundle">
                            <div class="title">
                              <h3>Menu Entity <a href="#" data-toggle="modal" data-target="#bundleModal" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                              </h3> 

                            </div>
                            <div class="x_content">
                              <div class="">
                                <div class="bundle_features">
                                <select size="10" class="form-control" id="menu">
                                 
                                </select>
                                </div>
                              </div>
                              <!--<div class="bundle_footer">
                                <a href="javascript:void(0);" class="btn btn-success btn-block" role="button">Footer <span> now!</span></a>
                               <p>
                               </p>
                              </div>-->
                            </div>
                          </div>
                        </div>
                        <!-- price element -->

                          <!-- price element -->
                          <div class="col-md-4 col-sm-4 col-xs-8">
                          <div class="bundle">
                            <div class="title">
                              <h3>Catagory <a href="#" data-toggle="modal" data-target="#categoryModal" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                              </h3>
                            </div>
                            <div class="x_content">
                              <div class="">
                                <div class="bundle_features">
                                <select size="5" class="form-control" id="category">
                                 
                                 </select>

                                </div>
                              </div>
                              <!--<div class="bundle_footer">
                                <a href="javascript:void(0);" class="btn btn-success btn-block" role="button">Footer <span> now!</span></a>
                               <p>
                                </p>
                              </div> -->
                            </div>
                          </div>
                        </div>
                        <!-- price element -->

                      <!-- price element -->
                      <div class="col-md-4 col-sm-4 col-xs-8">
                          <div class="bundle">
                            <div class="title">
                              <h3>Items <a href="#" data-toggle="modal" data-target="#itemModal" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                              </h3>
                            </div>
                            <div class="x_content">
                              <div class="">
                                <div class="bundle_features">
                                   <ul class="list-unstyled text-left items">
                                   
                                   </ul>

                                </div>
                              </div>
                              
                            </div>
                          </div>
                        </div>
                        <!-- price element -->

                       
                      </div>
                  
                  </div>
                </div>
              </div>
            </div>
        <!-- /page content -->

          <!-- Modal -->
  <div class="modal fade" id="bundleModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="ModalLabel">Add New Bundle</h3>
                <div class="message" id="message"></div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
            <div xclass="modal-body">

                <div class="col-xs-9 col-sm-6">
                  <form id="theForm">
                  <div class="form-group">
                    <label for="bundle">Bundle Name</label>
                    <input type="text" class="form-control" id="bundlename" aria-describedby="emailHelp" placeholder="Bundle Name">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Utility code</label>
                    <input type="text" class="form-control" id="utility_code" aria-describedby="emailHelp" placeholder="Utility Code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="description">Description</label>
                    <input type="text" class="form-control" id="description" aria-describedby="emailHelp" placeholder="Description">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  </form>

              </div>
                
            </div>
            <div class="modal-footer">               
                <button type="button" class="btn btn-success" id="save" value="save" name="submit">Add</button>
                <!--<button type="button" class="btn btn-warning" id="download" value="download" name="download">Download</button>-->
                <button type="button" class="btn btn-secondary " data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
  </div>
  <div class="modal fade" id="categoryModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="ModalLabel">Add New Catagory</h3>
                <div class="message" id="message"></div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
            <div xclass="modal-body">

                <div class="col-xs-9 col-sm-6">
                  <form id="theForm">
                  <div class="form-group">
                    <label for="bundle">Category Name</label>
                    <input type="text" class="form-control" id="categoryname" aria-describedby="emailHelp" placeholder="Category Name">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Category code</label>
                    <input type="text" class="form-control" id="category_code" aria-describedby="emailHelp" placeholder="Category Code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Utility code</label>
                    <input type="text" class="form-control" id="utility_code" aria-describedby="emailHelp" placeholder="Utility Code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  </form>

              </div>
                
            </div>
            <div class="modal-footer">               
                <button type="button" class="btn btn-warning" id="save" value="save" name="submit">Add</button>
                <!--<button type="button" class="btn btn-warning" id="download" value="download" name="download">Download</button>-->
                <button type="button" class="btn btn-secondary " data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
  </div>
  <div class="modal fade" id="itemModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="ModalLabel">Add New Item</h3>
                <div class="message" id="message"></div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
            <div xclass="modal-body">

                <div class="col-xs-9 col-sm-6">
                  <form id="theForm">
                  <div class="form-group">
                    <label for="bundle">Item Name</label>
                    <input type="text" class="form-control" id="itemname" aria-describedby="emailHelp" placeholder="Item Name">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Item code</label>
                    <input type="text" class="form-control" id="item_code" aria-describedby="emailHelp" placeholder="Item code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Amount</label>
                    <input type="text" class="form-control" id="amount" aria-describedby="emailHelp" placeholder="Amount">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Utility code</label>
                    <input type="text" class="form-control" id="utility_code" aria-describedby="emailHelp" placeholder="Utility Code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  <div class="form-group">
                    <label for="utility_code">Category code</label>
                    <input type="text" class="form-control" id="category_code" aria-describedby="emailHelp" placeholder="Category code">
                    <small id="emailHelp" class="form-text text-muted">Help small text if needed</small>
                  </div>
                  </form>

              </div>
                
            </div>
            <div class="modal-footer">               
                <button type="button" class="btn btn-info" id="save" value="save" name="submit">Add</button>
                <!--<button type="button" class="btn btn-warning" id="download" value="download" name="download">Download</button>-->
                <button type="button" class="btn btn-secondary " data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
  </div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalLabel">Delete Item Confirmation</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <!--<label for="recipient-name" class="control-label">Recipient:</label>-->
            <input type="text" class="form-control" id="itemId">
          </div>
         
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" id='delete_item' class="btn btn-danger">Delete</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalLabel">Update Item</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <!--<label for="recipient-name" class="control-label">Recipient:</label>-->
            <input type="text" class="form-control" id="itemId">
            <input type="text" class="form-control" id="itemPrice">
          </div>
         
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" id='update_item' class="btn btn-warning">Update</button>
      </div>
    </div>
  </div>
</div>
  <!-- end modal-->
