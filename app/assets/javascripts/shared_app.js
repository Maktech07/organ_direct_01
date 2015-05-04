
function gen_duallistbox(nameObj) {

      $(function() {
        $(nameObj)
            .bootstrapDualListbox({
              bootstrap2Compatible: false,
              moveAllLabel: 'MOVE ALL',
              removeAllLabel: 'REMOVE ALL',
              moveSelectedLabel: 'MOVE SELECTED',
              removeSelectedLabel: 'REMOVE SELECTED',
              filterPlaceHolder: 'FILTER',
              filterSelected: '2',
              filterNonSelected: '1',
              moveOnSelect: true,
              preserveSelectionOnMove: 'all',
              helperSelectNamePostfix: '_myhelper',
              selectedListLabel: 'Selected elements',
              nonSelectedListLabel: 'Unselected elements'
            })
            .bootstrapDualListbox('setMoveAllLabel', 'Move all the elementz!!!')
            .bootstrapDualListbox('setRemoveAllLabel', 'Remove them all!')
            .bootstrapDualListbox('setSelectedFilter', undefined)
            .bootstrapDualListbox('setNonSelectedFilter', undefined)
            .bootstrapDualListbox('refresh')
      });

}
