filter RemoteAddressNameIn {
  $b = $false;
  foreach ($item in $args[0]) {
    if ($_.RemoteAddress -match $item) { $b = $true; break; }
  }
  if ($b) { $_ }
}

filter RemoteAddressNotIn {
  $b = $true;
  foreach ($item in $args[0]) {
    if ($_.RemoteAddress -match $item) { $b = $false; break; }
  }
  if ($b) { $_ }
}

# function returning an array | filter | elements of the array which passed the test of the filter