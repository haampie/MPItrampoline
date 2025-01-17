module mpi_f08
  implicit none
  private
  save

  !

  include "mpif_version.h"
  public MPITRAMPOLINE_VERSION
  public MPITRAMPOLINE_VERSION_MAJOR
  public MPITRAMPOLINE_VERSION_MINOR
  public MPITRAMPOLINE_VERSION_PATCH

  include "mpiabif.h"
  public MPIABI_VERSION_MAJOR
  public MPIABI_VERSION_MINOR
  public MPIABI_VERSION_PATCH

  integer, public :: MPI_VERSION
  parameter (MPI_VERSION = MPIABI_MPI_VERSION)
  integer, public :: MPI_SUBVERSION
  parameter (MPI_SUBVERSION = MPIABI_MPI_SUBVERSION)

  integer, public :: MPI_MAX_DATAREP_STRING
  parameter (MPI_MAX_DATAREP_STRING = MPIABI_MAX_DATAREP_STRING)
  integer, public :: MPI_MAX_ERROR_STRING
  parameter (MPI_MAX_ERROR_STRING = MPIABI_MAX_ERROR_STRING)
  integer, public :: MPI_MAX_INFO_KEY
  parameter (MPI_MAX_INFO_KEY = MPIABI_MAX_INFO_KEY)
  integer, public :: MPI_MAX_INFO_VAL
  parameter (MPI_MAX_INFO_VAL = MPIABI_MAX_INFO_VAL)
  integer, public :: MPI_MAX_LIBRARY_VERSION_STRING
  parameter (MPI_MAX_LIBRARY_VERSION_STRING = MPIABI_MAX_LIBRARY_VERSION_STRING)
  integer, public :: MPI_MAX_OBJECT_NAME
  parameter (MPI_MAX_OBJECT_NAME = MPIABI_MAX_OBJECT_NAME)
  integer, public :: MPI_MAX_PORT_NAME
  parameter (MPI_MAX_PORT_NAME = MPIABI_MAX_PORT_NAME)
  integer, public :: MPI_MAX_PROCESSOR_NAME
  parameter (MPI_MAX_PROCESSOR_NAME = MPIABI_MAX_PROCESSOR_NAME)

  logical, public :: MPI_ASYNC_PROTECTS_NONBLOCKING
  parameter (MPI_ASYNC_PROTECTS_NONBLOCKING = .false.)
  logical, public :: MPI_SUBARRAYS_SUPPORTED
  parameter (MPI_SUBARRAYS_SUPPORTED = .false.)

  integer, public :: MPI_ADDRESS_KIND
  parameter (MPI_ADDRESS_KIND = MPIABI_ADDRESS_KIND)
  integer, public :: MPI_COUNT_KIND
  parameter (MPI_COUNT_KIND = MPIABI_COUNT_KIND)
  integer, public :: MPI_INTEGER_KIND
  parameter (MPI_INTEGER_KIND = MPIABI_INTEGER_KIND)
  integer, public :: MPI_OFFSET_KIND
  parameter (MPI_OFFSET_KIND = MPIABI_OFFSET_KIND)

  integer :: MPI_STATUS_SIZE
  parameter (MPI_STATUS_SIZE = MPIABI_STATUS_SIZE)

  ! character(1) MPI_ARGV_NULL(1)
  ! common /MPIABI_ARGV_NULL/ MPI_ARGV_NULL
  ! character(1) MPI_ARGVS_NULL(1, 1)
  ! common /MPIABI_ARGVS_NULL/ MPI_ARGVS_NULL
  ! 
  ! integer, public :: MPI_BOTTOM
  ! common /MPIABI_BOTTOM/ MPI_BOTTOM
  ! 
  ! integer, public :: MPI_ERRCODES_IGNORE(1)
  ! common /MPIABI_ERRCODES_IGNORE/ MPI_ERRCODES_IGNORE
  ! 
  ! integer, public :: MPI_IN_PLACE
  ! common /MPIABI_IN_PLACE/ MPI_IN_PLACE
  ! 
  ! integer, public :: MPI_STATUS_IGNORE(MPI_STATUS_SIZE)
  ! common /MPIABI_STATUS_IGNORE/ MPI_STATUS_IGNORE
  ! integer, public :: MPI_STATUSES_IGNORE(MPI_STATUS_SIZE, 1)
  ! common /MPIABI_STATUSES_IGNORE/ MPI_STATUSES_IGNORE
  ! 
  ! integer, public :: MPI_UNWEIGHTED(1)
  ! common /MPIABI_UNWEIGHTED/ MPI_UNWEIGHTED
  ! 
  ! integer, public :: MPI_WEIGHTS_EMPTY(1)
  ! common /MPIABI_WEIGHTS_EMPTY/ MPI_WEIGHTS_EMPTY

  character(1), public :: MPI_ARGV_NULL(1)
  integer(MPI_ADDRESS_KIND) MPI_ARGV_NULL_PTR
  pointer (MPI_ARGV_NULL_PTR, MPI_ARGV_NULL)
  common /MPIABI_ARGV_NULL_PTR/ MPI_ARGV_NULL_PTR

  character(1), public :: MPI_ARGVS_NULL(1, 1)
  integer(MPI_ADDRESS_KIND) MPI_ARGVS_NULL_PTR
  pointer (MPI_ARGVS_NULL_PTR, MPI_ARGVS_NULL)
  common /MPIABI_ARGVS_NULL_PTR/ MPI_ARGVS_NULL_PTR
 
  integer, public :: MPI_BOTTOM
  integer(MPI_ADDRESS_KIND) MPI_BOTTOM_PTR
  pointer (MPI_BOTTOM_PTR, MPI_BOTTOM)
  common /MPIABI_BOTTOM_PTR/ MPI_BOTTOM_PTR

  integer, public :: MPI_ERRCODES_IGNORE(1)
  integer(MPI_ADDRESS_KIND) MPI_ERRCODES_IGNORE_PTR
  pointer (MPI_ERRCODES_IGNORE_PTR, MPI_ERRCODES_IGNORE)
  common /MPIABI_ERRCODES_IGNORE_PTR/ MPI_ERRCODES_IGNORE_PTR
 
  integer, public :: MPI_IN_PLACE
  integer(MPI_ADDRESS_KIND) MPI_IN_PLACE_PTR
  pointer (MPI_IN_PLACE_PTR, MPI_IN_PLACE)
  common /MPIABI_IN_PLACE_PTR/ MPI_IN_PLACE_PTR

  integer, public :: MPI_STATUS_IGNORE(MPI_STATUS_SIZE)
  integer(MPI_ADDRESS_KIND) MPI_STATUS_IGNORE_PTR
  pointer (MPI_STATUS_IGNORE_PTR, MPI_STATUS_IGNORE)
  common /MPIABI_STATUS_IGNORE_PTR/ MPI_STATUS_IGNORE_PTR
 
  integer, public :: MPI_STATUSES_IGNORE(MPI_STATUS_SIZE, 1)
  integer(MPI_ADDRESS_KIND) MPI_STATUSES_IGNORE_PTR
  pointer (MPI_STATUSES_IGNORE_PTR, MPI_STATUSES_IGNORE)
  common /MPIABI_STATUSES_IGNORE_PTR/ MPI_STATUSES_IGNORE_PTR

  integer, public :: MPI_UNWEIGHTED(1)
  integer(MPI_ADDRESS_KIND) MPI_UNWEIGHTED_PTR
  pointer (MPI_UNWEIGHTED_PTR, MPI_UNWEIGHTED)
  common /MPIABI_UNWEIGHTED_PTR/ MPI_UNWEIGHTED_PTR
 
  integer, public :: MPI_WEIGHTS_EMPTY(1)
  integer(MPI_ADDRESS_KIND) MPI_WEIGHTS_EMPTY_PTR
  pointer (MPI_WEIGHTS_EMPTY_PTR, MPI_WEIGHTS_EMPTY)
  common /MPIABI_WEIGHTS_EMPTY_PTR/ MPI_WEIGHTS_EMPTY_PTR

  !

  type, bind(C), public :: mpi_comm
     integer :: mpi_val
  end type mpi_comm

  type, bind(C), public :: mpi_datatype
     integer :: mpi_val
  end type mpi_datatype

  type, bind(C), public :: mpi_errhandler
     integer :: mpi_val
  end type mpi_errhandler

  type, bind(C), public :: mpi_file
     integer :: mpi_val
  end type mpi_file

  type, bind(C), public :: mpi_group
     integer :: mpi_val
  end type mpi_group

  type, bind(C), public :: mpi_info
     integer :: mpi_val
  end type mpi_info

  type, bind(C), public :: mpi_message
     integer :: mpi_val
  end type mpi_message

  type, bind(C), public :: mpi_op
     integer :: mpi_val
  end type mpi_op

  type, bind(C), public :: mpi_request
     integer :: mpi_val
  end type mpi_request

  type, bind(C), public :: mpi_win
     integer :: mpi_val
  end type mpi_win

  type, bind(C), public :: mpi_status
     integer :: mpi_val(mpi_status_size)
     integer :: mpi_source
     integer :: mpi_tag
     integer :: mpi_error
  end type mpi_status

  !

  type(mpi_comm), public :: mpi_comm_null
  type(mpi_comm), public :: mpi_comm_self
  type(mpi_comm), public :: mpi_comm_world

  type(mpi_datatype), public :: mpi_int
  type(mpi_datatype), public :: mpi_integer

  !

  interface operator (.eq.)
     module procedure mpi_comm_eq
     module procedure mpi_datatype_eq
     module procedure mpi_errhandler_eq
     module procedure mpi_file_eq
     module procedure mpi_group_eq
     module procedure mpi_info_eq
     module procedure mpi_message_eq
     module procedure mpi_op_eq
     module procedure mpi_request_eq
     module procedure mpi_win_eq
  end interface operator (.eq.)

  interface operator (.ne.)
     module procedure mpi_comm_ne
     module procedure mpi_datatype_ne
     module procedure mpi_errhandler_ne
     module procedure mpi_file_ne
     module procedure mpi_group_ne
     module procedure mpi_info_ne
     module procedure mpi_message_ne
     module procedure mpi_op_ne
     module procedure mpi_request_ne
     module procedure mpi_win_ne
  end interface operator (.ne.)

  !

  interface mpi_send
     module procedure mpi_send_impl
  end interface
  public mpi_send

  interface mpi_recv
     module procedure mpi_recv_impl
  end interface mpi_recv
  public mpi_recv

  interface mpi_get_count
     module procedure mpi_get_count_impl
  end interface mpi_get_count
  public mpi_get_count

  interface mpi_comm_size
     module procedure mpi_comm_size_impl
  end interface mpi_comm_size
  public mpi_comm_size

  interface mpi_comm_rank
     module procedure mpi_comm_rank_impl
  end interface mpi_comm_rank
  public mpi_comm_rank

  interface mpi_init
     module procedure mpi_init_impl
  end interface mpi_init
  public mpi_init

  interface mpi_finalize
     module procedure mpi_finalize_impl
  end interface mpi_finalize
  public mpi_finalize

  interface mpi_abort
     module procedure mpi_abort_impl
  end interface mpi_abort
  public mpi_abort

  interface mpi_wtime
     double precision function mpi_wtime()
       implicit none
     end function mpi_wtime
  end interface mpi_wtime
  public mpi_wtime

  interface mpi_wtick
     double precision function mpi_wtick()
       implicit none
     end function mpi_wtick
  end interface mpi_wtick
  public mpi_wtick

contains

  logical function mpi_comm_eq(comm1, comm2)
    type(mpi_comm), intent(in) :: comm1, comm2
    mpi_comm_eq = comm1%mpi_val .eq. comm2%mpi_val
  end function mpi_comm_eq

  logical function mpi_comm_ne(comm1, comm2)
    type(mpi_comm), intent(in) :: comm1, comm2
    mpi_comm_ne = comm1%mpi_val .ne. comm2%mpi_val
  end function mpi_comm_ne

  logical function mpi_datatype_eq(datatype1, datatype2)
    type(mpi_datatype), intent(in) :: datatype1, datatype2
    mpi_datatype_eq = datatype1%mpi_val .eq. datatype2%mpi_val
  end function mpi_datatype_eq

  logical function mpi_datatype_ne(datatype1, datatype2)
    type(mpi_datatype), intent(in) :: datatype1, datatype2
    mpi_datatype_ne = datatype1%mpi_val .ne. datatype2%mpi_val
  end function mpi_datatype_ne

  logical function mpi_errhandler_eq(errhandler1, errhandler2)
    type(mpi_errhandler), intent(in) :: errhandler1, errhandler2
    mpi_errhandler_eq = errhandler1%mpi_val .eq. errhandler2%mpi_val
  end function mpi_errhandler_eq

  logical function mpi_errhandler_ne(errhandler1, errhandler2)
    type(mpi_errhandler), intent(in) :: errhandler1, errhandler2
    mpi_errhandler_ne = errhandler1%mpi_val .ne. errhandler2%mpi_val
  end function mpi_errhandler_ne

  logical function mpi_file_eq(file1, file2)
    type(mpi_file), intent(in) :: file1, file2
    mpi_file_eq = file1%mpi_val .eq. file2%mpi_val
  end function mpi_file_eq

  logical function mpi_file_ne(file1, file2)
    type(mpi_file), intent(in) :: file1, file2
    mpi_file_ne = file1%mpi_val .ne. file2%mpi_val
  end function mpi_file_ne

  logical function mpi_group_eq(group1, group2)
    type(mpi_group), intent(in) :: group1, group2
    mpi_group_eq = group1%mpi_val .eq. group2%mpi_val
  end function mpi_group_eq

  logical function mpi_group_ne(group1, group2)
    type(mpi_group), intent(in) :: group1, group2
    mpi_group_ne = group1%mpi_val .ne. group2%mpi_val
  end function mpi_group_ne

  logical function mpi_info_eq(info1, info2)
    type(mpi_info), intent(in) :: info1, info2
    mpi_info_eq = info1%mpi_val .eq. info2%mpi_val
  end function mpi_info_eq

  logical function mpi_info_ne(info1, info2)
    type(mpi_info), intent(in) :: info1, info2
    mpi_info_ne = info1%mpi_val .ne. info2%mpi_val
  end function mpi_info_ne

  logical function mpi_message_eq(message1, message2)
    type(mpi_message), intent(in) :: message1, message2
    mpi_message_eq = message1%mpi_val .eq. message2%mpi_val
  end function mpi_message_eq

  logical function mpi_message_ne(message1, message2)
    type(mpi_message), intent(in) :: message1, message2
    mpi_message_ne = message1%mpi_val .ne. message2%mpi_val
  end function mpi_message_ne

  logical function mpi_op_eq(op1, op2)
    type(mpi_op), intent(in) :: op1, op2
    mpi_op_eq = op1%mpi_val .eq. op2%mpi_val
  end function mpi_op_eq

  logical function mpi_op_ne(op1, op2)
    type(mpi_op), intent(in) :: op1, op2
    mpi_op_ne = op1%mpi_val .ne. op2%mpi_val
  end function mpi_op_ne

  logical function mpi_request_eq(request1, request2)
    type(mpi_request), intent(in) :: request1, request2
    mpi_request_eq = request1%mpi_val .eq. request2%mpi_val
  end function mpi_request_eq

  logical function mpi_request_ne(request1, request2)
    type(mpi_request), intent(in) :: request1, request2
    mpi_request_ne = request1%mpi_val .ne. request2%mpi_val
  end function mpi_request_ne

  logical function mpi_win_eq(win1, win2)
    type(mpi_win), intent(in) :: win1, win2
    mpi_win_eq = win1%mpi_val .eq. win2%mpi_val
  end function mpi_win_eq

  logical function mpi_win_ne(win1, win2)
    type(mpi_win), intent(in) :: win1, win2
    mpi_win_ne = win1%mpi_val .ne. win2%mpi_val
  end function mpi_win_ne

  !

  subroutine mpi_send_impl(buf, count, datatype, dest, tag, comm, ierror)
    use mpi, only: mpi_send
    !gcc$ attributes no_arg_check :: buf
    type(*), intent(in) :: buf
    integer, intent(in) :: count
    type(mpi_datatype), intent(in) :: datatype
    integer, intent(in) :: dest
    integer, intent(in) :: tag
    type(mpi_comm), intent(in) :: comm
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_send(buf, count, datatype%mpi_val, dest, tag, comm%mpi_val, ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_send_impl
  
  subroutine mpi_recv_impl(buf, count, datatype, source, tag, comm, status, ierror)
    use mpi, only: mpi_source, mpi_tag, mpi_error, mpi_recv
    !gcc$ attributes no_arg_check :: buf
    type(*) :: buf
    integer, intent(in) :: count
    type(mpi_datatype), intent(in) :: datatype
    integer, intent(in) :: source
    integer, intent(in) :: tag
    type(mpi_comm), intent(in) :: comm
    type(mpi_status), intent(out) :: status
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_recv(buf, count, datatype%mpi_val, source, tag, comm%mpi_val, status%mpi_val, ierror1)
    
    status%mpi_source = status%mpi_val(mpi_source)
    status%mpi_tag = status%mpi_val(mpi_tag)
    status%mpi_error = status%mpi_val(mpi_error)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_recv_impl
  
  subroutine mpi_get_count_impl(status, datatype, count, ierror)
    use mpi, only: mpi_source, mpi_tag, mpi_error, mpi_get_count
    implicit none
    type(mpi_status), intent(in) :: status
    type(mpi_datatype), intent(in) :: datatype
    integer, intent(out) :: count
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    integer status1(mpi_status_size)
    
    status1 = status%mpi_val
    status1(mpi_source) = status%mpi_source
    status1(mpi_tag) = status%mpi_tag
    status1(mpi_error) = status%mpi_error
    
    call mpi_get_count(status1, datatype%mpi_val, count, ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_get_count_impl
  
  subroutine mpi_comm_size_impl(comm, size, ierror)
    use mpi, only: mpi_comm_size
    implicit none
    type(mpi_comm), intent(in) :: comm
    integer, intent(out) :: size
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_comm_size(comm%mpi_val, size, ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_comm_size_impl
  
  subroutine mpi_comm_rank_impl(comm, rank, ierror)
    use mpi, only: mpi_comm_rank
    implicit none
    type(mpi_comm), intent(in) :: comm
    integer, intent(out) :: rank
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_comm_rank(comm%mpi_val, rank, ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_comm_rank_impl
  
  subroutine mpi_init_impl(ierror)
    use mpi, only: mpi_init
    implicit none
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_init(ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_init_impl
  
  subroutine mpi_finalize_impl(ierror)
    use mpi, only: mpi_finalize
    implicit none
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_finalize(ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_finalize_impl
  
  subroutine mpi_abort_impl(comm, errorcode, ierror)
    use mpi, only: mpi_abort
    implicit none
    type(mpi_comm), intent(in) :: comm
    integer, intent(in) :: errorcode
    integer, optional, intent(out) :: ierror
    
    integer ierror1
    
    call mpi_abort(comm%mpi_val, errorcode, ierror1)
    
    if (present(ierror)) ierror = ierror1
  end subroutine mpi_abort_impl

end module mpi_f08
