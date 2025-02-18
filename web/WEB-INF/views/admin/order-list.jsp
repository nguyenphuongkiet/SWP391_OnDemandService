<%-- 
    Document   : resident-tables
    Created on : Jun 2, 2023, 9:53:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<div class="pagetitle">
    <h1>Orders Tables</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<c:url value="/admin/admin-dashboard.do" />">Home</a></li>
            <li class="breadcrumb-item">Tables</li>
            <li class="breadcrumb-item active">Orders Tables</li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<!-- Resident Table -->
<div class="col-12">
    <div class="card recent-sales overflow-auto">
        <div class="card-body">
            <h5 class="card-title">Orders Tables</h5>
            <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-funnel-fill"></i></a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                        <h6>Filter</h6>
                    </li>
                    <li><a class="dropdown-item" href="<c:url value="/admin/order-list.do?op=getall" />">All Orders</a></li>
                    <li><a class="dropdown-item" href="<c:url value="/admin/order-list.do?op=getall&filterOption=status" />">Status</a></li>
                </ul>
            </div>


            <table id="myTable" class="table table-borderless datatable">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Resident</th>
                        <th scope="col">Coordinator</th>
                        <th scope="col">Date</th>
                        <th scope="col">Delivery Time</th>
                        <th scope="col">Status</th>
                        <th scope="col">Block</th>
                        <th scope="col">Room</th>
                        <th scope="col">Note</th>
                        <th scope="col">Price</th>
                        <th scope="col">Operation</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items = "${list}" var ="r">
                        <tr>
                            <th scope="row">${r.id}</a></th>
                            <td>${r.residentName}</td>
                            <td>${r.coordinatorName}</td>
                            <td>${r.date}</td>
                            <td>${r.delivery_time}</td>
                            <c:if test="${r.status == 'Pending'}">
                                <td><span class="bage bage-warning">${r.status}</span></td>
                                </c:if>
                                <c:if test="${r.status == 'Completed'}">
                                <td><span class="bage bage-success">${r.status}</span></td>
                                </c:if>
                                <c:if test="${r.status == 'Failed'}">
                                <td><span class="bage bage-danger">${r.status}</span></td>
                                </c:if>
                                <c:if test="${r.status == 'Cancel'}">
                                <td><span class="bage bage-cancel">${r.status}</span></td>
                                </c:if>
                            <td>${r.block}</td>
                            <td>${r.room}</td>
                            <td>${r.note}</td>
                            <td>${r.total == 0? "" : r.total}</td>
                            <td><a class="btn btn-outline-primary" href="<c:url value="/admin/order-detail.do?orderID=${r.id}"/>">View <i class="bi bi-gear"></i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

