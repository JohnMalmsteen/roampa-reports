$(function() {

  /* portlets */
  $( ".explorer" ).sortable({
    connectWith: ".explorer",
    handle: ".view-header",
    cancel: ".view-toggle",
    placeholder: "view-placeholder ui-corner-all"
  });

  $( ".view" )
    .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
    .find( ".view-header" )
    .addClass( "ui-widget-header ui-corner-all" )
    .prepend( "<span class='ui-icon ui-icon-plusthick view-toggle'></span>");

  $( ".view-toggle" ).click(function() {
    var icon = $( this );
    icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
    icon.closest( ".view" ).find( ".view-fields" ).toggle();
  });

  /* dropable */
  $( "ul.droppable" )
    .sortable({
    connectWith: "ul#selected-list"      
  });
});