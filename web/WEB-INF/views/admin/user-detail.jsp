<%-- 
    Document   : resident-detail
    Created on : Jun 4, 2023, 6:39:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<div class="pagetitle">
    <h1>User Detail</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<c:url value="/admin/admin-dashboard.do" />">Home</a></li>
            <li class="breadcrumb-item">Table</li>
            <li class="breadcrumb-item active">User Detail</li>
        </ol>
    </nav>
</div>

<div class="col-xl-8">
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="pagetitle">
                <h2 class="ml-3 mt-3 mb-4">User Detail</h2>
            </div>
            <!-- Account details card-->

            <form id="updateUserForm" method="post" action="<c:url value="/admin/updateUser.do" />">
                <div class="row mb-3">
                    <label for="aid" class="col-md-4 col-lg-3 col-form-label">ID</label>
                    <div class="col-md-8 col-lg-9">
                        <input name="AID" type="hidden" class="form-control" id="AID" value="${u.AID}">
                        <input name="AID" type="text" class="form-control" id="AID" value="${u.AID}" disabled="">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                    <div class="col-md-8 col-lg-9">
                        <input name="fullName" type="hidden" class="form-control" id="name" value="${u.name}">
                        <input name="fullName" type="text" class="form-control" id="name" value="${u.name}" disabled="">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
                    <div class="col-md-8 col-lg-9">
                        <input name="gender" type="hidden" class="form-control" id="gender" value="${u.gender}">
                        <input name="gender" type="text" class="form-control" id="gender" value="${u.gender}" disabled="">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                    <div class="col-md-8 col-lg-9">
                        <input name="email" type="hidden" class="form-control" id="Email" value="${u.email}">
                        <input name="email" type="email" class="form-control" id="Email" value="${u.email}" disabled="">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                    <div class="col-md-8 col-lg-9">
                        <input name="phone" type="hidden" class="form-control" id="Phone" value="${u.phone}">
                        <input name="phone" type="text" class="form-control" id="Phone" value="${u.phone}" disabled="">
                    </div>
                </div>

                <!--                <div class="row mb-3">
                                    <label class="col-md-4 col-lg-3 col-form-label" for="bid">BLOCK ID</label>
                                    <select name="bid" class="w-100 form-control">
                <c:forEach var="bl" items="${blockList}">
                    <option value="${bl.BID}">${bl.name}</option>
                </c:forEach>
            </select>
        </div>-->

                <div class="row mb-3">
                    <label for="Status" class="col-md-4 col-lg-3 col-form-label">Status</label>
                    <div class="col-md-8 col-lg-9">
                        <select name="status" class="form-select" id="Status">
                            <option value="1" ${u.status == 1 ? 'selected' : ''}>Available</option>
                            <option value="0" ${u.status == 0 ? 'selected' : ''}>Unavailable</option>
                        </select>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6" style="color: green;">${message}</div>
                    <div class="col-md-6 d-flex justify-content-end">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#updateUserModal">Save change</button>
                        <input id="updateUser" type="submit" name="op" value="" hidden>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="updateUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Do you want to update this User information?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Update" below if you are ready to update this User.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a id="updateUserLink" onclick="updateUser()" class="btn btn-primary">Update</a>
            </div>
        </div>
    </div>
</div>   
<script>
    function updateUser() {
        var form = document.getElementById("updateUserForm");
        var submitOp = document.getElementById("updateUser");
        submitOp.value = 'update';
        submitOp.click();
    }
</script>