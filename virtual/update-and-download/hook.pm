use common;

run_swat_module(
    GET => 'home-page/'
);

run_swat_module(
    POST => 'save-for-later/'
);

run_swat_module(
    GET => 'edit/ID'
);

run_swat_module(
    POST => 'download/', { ID => id() }
);

set_response('done');
