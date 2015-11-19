modify_resource(sub {
    my $r = shift;
    s{actions}[] for $r;
    $r;
});
