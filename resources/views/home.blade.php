@extends('layouts/blank')

@section('content')
<script src="./app/js/nbc.js"></script>

<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div xclass="x_panel">
                  <div class="x_title ">
                    <h2>NBC Agency Transactions</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div xclass="x_content">
                    <p class="text-muted font-13 m-b-30">
                    <div id="loading"></div>
                      
                   </p>
                    <table id="dynamic-table" class="table table-striped table-bordered table-condensed">
                      <thead>
                        <tr>
                          <th>ID </i></th>
                          <th>Date </i></th>
                          <th>Terminal </i></th>
                          <th>Member Name </i></th>
                          <th>Address</th>
                          <th>Utility Type </i></th> 
                          <th>Amount </i></th>                        
                          <th>Utility Reference </i></th>
                          <th>Phone </i></th>
                          <th>Reference </i></th>
                          <th>TransID </i></th>
                          <th>Result </i></th>
                          <th xclass="hidden">Message</th>
                          
                         
                        </tr>
                      </thead>
                      <tbody>
                        
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>


                    
					
                  </div>
                </div>
              </div>
            </div>

  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="ModalLabel">Advanced Search</h3>
                <div class="message" id="message"></div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
            <div xclass="modal-body">

                <div class="col-xs-12 col-sm-6">
                  <form id="theForm">
                  <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                        <div class="form-group">
                          <b>Date Range</b> <input type=checkbox name="check-date" id="check-date" >
                          <div id="transdate"  style="border-radus:5px ;background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; xwidth: 30%"> <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp;<span id="date-text"></span> <b class="caret"></b></div>
                        </div>
                        <div class="form-group">
                          <label for="transid">Reference / Transaction ID</label>
                          <input type="text" name="transid" id="transid" value="" class="form-control" />
                        </div>
                        <div class="form-group">
                          <label for="utility_ref">Utility Reference</label>
                          <input type=text name="utility_ref" id="utility_ref" value="" class="form-control"  />
                        </div>
                      
                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12">Result</label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div id="isresult" class="btn-group" data-toggle="buttons">
                              <label class="btn btn-default" data-toggle-class="btn btn-primary" xdata-toggle-passive-class="btn-default">
                                <input type="radio" id="result" name="result" value="000"> Success
                              </label>
                              <label class="btn btn-default active" data-toggle-class="btn btn-primary" xdata-toggle-passive-class="btn-default">
                                <input type="radio" id="result" name="result" checked value=""> All
                              </label>
                            </div>
                          </div>
                        </div>
                        <br><br><br>
                        <div class="form-group">
                          <label class="control-label col-md-3 col-sm-3 col-xs-12">Download</label>
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div id="isdownload" class="btn-group" data-toggle="buttons">
                              <label class="btn btn-default" data-toggle-class="btn btn-primary" xdata-toggle-passive-class="btn-default">
                                <input type="radio" id="download" name="download" value="yes"> &nbsp; Yes &nbsp;
                              </label>
                              <label class="btn btn-default active" data-toggle-class="btn btn-primary" xdata-toggle-passive-class="btn-default">
                                <input type="radio" id="download" name="download" checked value="no"> No
                              </label>
                            </div>
                          </div>
                        </div>
                </form>

              </div>
                
            </div>
            <div class="modal-footer">               
                <button type="button" class="btn btn-primary" id="save" value="save" name="submit">Search</button>
                <!--<button type="button" class="btn btn-warning" id="download" value="download" name="download">Download</button>-->
                <button type="button" class="btn btn-secondary " data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
  </div>
 
  <!-- end modal-->

@stop