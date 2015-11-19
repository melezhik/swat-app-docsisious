use common;

run_swat_module(
    GET => 'actions/'
);

run_swat_module(
    POST => 'actions/'
);

run_swat_module(
    GET => 'edit/ID'
);

set_response('done');
