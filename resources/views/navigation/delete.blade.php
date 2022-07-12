<!-- Button trigger modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="navigation-{{$navigation->id}}">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="navigation-{{$navigation->id}}">Are you sure ?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <form action="{{route('navigation.delete',$navigation)}}" method="post">
                        @csrf
                        @method("DELETE")
                        <button type="submit" class="btn btn-danger">Yes</button>
                    </form>

                </div>
            </div>
            <!-- <div class="modal-footer bg-whitesmoke br">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div> -->
        </div>
    </div>
</div>