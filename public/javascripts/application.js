// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// function load_doctors(msg){
//   $.ajax({
//          url: "/timeslots/new",
//          asynchronous: true,
//          evalScripts: true,
//          method: 'post',
//          data: {
//              department_id: msg,
//          }
//      });
// }
function load_timeslotform(msg){
  window.location = "/timeslots/new?doctor_id="+msg
}

function show_group_popup() {
  $('#groups_show').show();
  win = new Window({title: "Share This", width:200, height:150, destroyOnClose: true, recenterAuto:false});
  win.setContent('groups_show',true,true);
  win.show();
}



  var j = jQuery.noConflict()
function list_doctors(msg){
  j.ajax({
           type: 'get',
           url: "/timeslots/new",
           data: {
               department_id: msg,
           },
           async: true,
           // success: function(msg){}

       })
  }
