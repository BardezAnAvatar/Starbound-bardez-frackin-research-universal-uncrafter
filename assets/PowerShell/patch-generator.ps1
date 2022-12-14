if ($args[0] -eq '--help')
{
    Write-Output 'parameter 1: JSON path'
    Write-Output 'parameter 2: test value'
    Write-Output 'parameter 3: test count'
}
elseif ($args.count -eq 3)
{
    <# Action when all if and elseif conditions are false #>
    for ( $i = $args[2] - 1; $i -gt 0; $i-- )
    {
        $patch = '  [{"op":"test","path":"' + $args[0] + '/' + $i + '","value":"' + $args[1] + '"},{"op":"remove","path":"' + $args[0] + '/' + $i + '"}],'
        Write-Output $patch
    }
}