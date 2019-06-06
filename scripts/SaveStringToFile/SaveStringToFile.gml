///@arg filename
///@arg string

var fileName = argument0;
var str = argument1;

var buffer = buffer_create(string_byte_length(str) + 1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, str);
buffer_save(buffer, fileName);
buffer_delete(buffer);