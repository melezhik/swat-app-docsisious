modify_resource(sub {
    my $r = shift;
    s{save-for-later}[] for $r;
    $r;
});
