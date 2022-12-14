if ($args[0] -eq '--help')
{
    Write-Output 'parameter 1: JSON path. May use token `%i` for index'
    Write-Output 'parameter 2: test value'
    Write-Output 'parameter 3: test count'
}
elseif ($args.count -eq 3)
{
    for ( $i = $args[2] - 1; $i -gt -1; $i-- )
    {
        $path = $args[0] -replace '%i', $i
        $patch = '  [{"op":"test","path":"' + $path + '","value":' + $args[1] + '},{"op":"remove","path":"' + $args[0] + '/' + $i + '"}],'
        Write-Output $patch
    }
}