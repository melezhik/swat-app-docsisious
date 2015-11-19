modify_resource(sub {
    my $r = shift;
    s{home-page}[] for $r;
    $r;
});
