modify_resource(sub {
    my $r = shift;
    s{download}[] for $r;
    $r;
});
