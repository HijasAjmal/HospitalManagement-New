// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


  var j = jQuery.noConflict()
function list_doctors(msg, action){
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


  function list_doctors_patient(msg){
  j.ajax({
           type: 'get',
           url: "/patients/slot_view",
           data: {
               department_id: msg,
           },
           async: true,
           // success: function(msg){}

       })
  }


  function showDateForm(msg){
  j.ajax({
           type: 'get',
           url: "/patients/slot_view",
           data: {
               doctor_id: msg,
           },
           async: true,
           // success: function(msg){}

       })
  }


  function list_bed(msg){
    j.ajax({
             type: 'get',
             url: "/admitted_records/new_record",
             data: {
                 room_id: msg,
             },
             async: true,
             // success: function(msg){}

         })
    }
