use common;

modify_resource(sub{
    my $r = shift;
    my $id = id();
    s{ID}[$id] for $r;
    $r;
    
});
