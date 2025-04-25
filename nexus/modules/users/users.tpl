<!-- BEGIN: MAIN -->
<div class="content-section">
    <div class="section-header">
        <h1><i class="fas fa-users"></i> {USERS_BREADCRUMBS}</h1>
    </div>
    
    <div class="section-body">
        <div class="filter-section">
            <div class="filter-header">
                <h3><i class="fas fa-filter"></i> {PHP.L.Filters}<!-- IF {USERS_ACTIVE_FILTERS} -->: <span class="active-filters">{USERS_ACTIVE_FILTERS}</span><!-- ENDIF --></h3>
            </div>
            
            <form id="filter-form" action="{USERS_FILTERS_ACTION}" method="GET" class="form-container filter-form">
                {USERS_FILTERS_PARAMS}
                
                <div class="filter-grid">
                    <div class="filter-group">
                        <div class="filter-label">
                            <i class="fas fa-search"></i> {PHP.L.Filter_search}:
                        </div>
                        <div class="filter-fields">
                            <div class="filter-country">{USERS_FILTERS_COUNTRY}</div>
                            <div class="filter-maingroup">{USERS_FILTERS_MAIN_GROUP}</div>
                            <div class="filter-group">{USERS_FILTERS_GROUP}</div>
                        </div>
                    </div>
                    
                    <div class="filter-group">
                        <div class="filter-label">
                            <i class="fas fa-user"></i> {PHP.L.Username_search}:
                        </div>
                        <div class="filter-fields">
                            {USERS_FILTERS_SEARCH}
                        </div>
                    </div>
                    
                    <div class="filter-group">
                        <div class="filter-label">
                            <i class="fas fa-sort"></i> {PHP.L.OrderBy}:
                        </div>
                        <div class="filter-fields orderby-fields">
                            <div class="filter-sort">{USERS_FILTERS_SORT}</div>
                            <div class="filter-sort-way">{USERS_FILTERS_SORT_WAY}</div>
                        </div>
                    </div>
                </div>
                
                <div class="filter-actions">
                    <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i> {PHP.L.Submit}</button>
                    <a href="{PHP|cot_url('users')}" class="btn btn-outline"><i class="fas fa-times"></i> {PHP.L.Reset}</a>
                </div>
            </form>
        </div>
        
        <div class="users-list-container">
            <div class="table-responsive">
                <table class="users-table">
                    <thead>
                        <tr>
                            <th class="user-pm-col"></th>
                            <th class="user-name-col">{USERS_TOP_NAME}</th>
                            <th class="user-group-col">{USERS_TOP_MAIN_GROUP}</th>
                            <th class="user-level-col">{USERS_TOP_GROUP_LEVEL}</th>
                            <th class="user-country-col">{USERS_TOP_COUNTRY}</th>
                            <th class="user-date-col">{USERS_TOP_REGISTRATION_DATE}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: USERS_ROW -->
                        <tr class="user-row">
                            <td class="user-pm-cell">{USERS_ROW_PM}</td>
                            <td class="user-name-cell">
                                <div class="user-name">{USERS_ROW_NAME}</div>
                                <!-- IF {USERS_ROW_TAG} -->
                                <div class="user-tag">{USERS_ROW_TAG}</div>
                                <!-- ENDIF -->
                            </td>
                            <td class="user-group-cell">{USERS_ROW_MAIN_GROUP}</td>
                            <td class="user-level-cell">{USERS_ROW_MAIN_GROUP_STARS}</td>
                            <td class="user-country-cell">
                                <!-- IF {USERS_ROW_COUNTRY_FLAG} -->
                                <span class="country-flag">{USERS_ROW_COUNTRY_FLAG}</span>
                                <!-- ENDIF -->
                                <span class="country-name">{USERS_ROW_COUNTRY}</span>
                            </td>
                            <td class="user-date-cell">{USERS_ROW_REGDATE}</td>
                        </tr>
                        <!-- END: USERS_ROW -->
                    </tbody>
                </table>
            </div>
        </div>
        
        <div class="pagination-info">
            <div class="pagination-stats">
                <span><i class="fas fa-users"></i> {PHP.L.users_usersinthissection}: <strong>{TOTAL_ENTRIES}</strong></span>
                <span><i class="fas fa-list"></i> {PHP.L.users_usersperpage}: <strong>{ENTRIES_PER_PAGE}</strong></span>
            </div>
            <div class="pagination-container">
                <ul class="pagination">
                    {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                </ul>
            </div>
        </div>
    </div>
</div>

<style>
/* Users List Özel Stilleri */
.filter-section {
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius);
    padding: var(--spacing-4);
    margin-bottom: var(--spacing-6);
    box-shadow: var(--shadow-sm);
}

.filter-header {
    margin-bottom: var(--spacing-4);
    border-bottom: 1px solid var(--border-color);
    padding-bottom: var(--spacing-2);
}

.filter-header h3 {
    font-size: var(--font-size-lg);
    color: var(--text-primary);
    margin: 0;
    display: flex;
    align-items: center;
}

.filter-header h3 i {
    margin-right: var(--spacing-2);
    color: var(--primary-color);
}

.active-filters {
    font-weight: var(--font-weight-semibold);
    color: var(--primary-color);
}

.filter-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: var(--spacing-4);
    margin-bottom: var(--spacing-4);
}

.filter-group {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-2);
}

.filter-label {
    font-weight: var(--font-weight-medium);
    color: var(--text-primary);
    font-size: var(--font-size-base);
    margin-bottom: var(--spacing-1);
}

.filter-label i {
    color: var(--primary-color);
    margin-right: var(--spacing-1);
}

.filter-fields {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-2);
}

.orderby-fields {
    display: flex;
    gap: var(--spacing-2);
}

.filter-sort {
    flex: 2;
}

.filter-sort-way {
    flex: 1;
}

.filter-actions {
    display: flex;
    gap: var(--spacing-2);
    margin-top: var(--spacing-4);
    justify-content: flex-end;
}

/* Users Table Styles */
.users-list-container {
    margin-bottom: var(--spacing-6);
}

.users-table {
    width: 100%;
    border-collapse: collapse;
    border-radius: var(--border-radius);
    overflow: hidden;
    box-shadow: var(--shadow);
}

.users-table thead {
    background-color: var(--primary-color);
    color: var(--text-white);
}

.users-table th {
    padding: var(--spacing-3) var(--spacing-4);
    font-weight: var(--font-weight-semibold);
    text-align: left;
    position: relative;
}

.users-table th:after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: rgba(255, 255, 255, 0.1);
}

.users-table tbody tr {
    background-color: var(--bg-color);
    transition: background-color 0.3s;
}

.users-table tbody tr:nth-child(even) {
    background-color: var(--lighter-grey);
}

.users-table tbody tr:hover {
    background-color: rgba(58, 123, 213, 0.05);
}

.users-table td {
    padding: var(--spacing-3) var(--spacing-4);
    border-bottom: 1px solid var(--border-color);
}

.user-pm-col {
    width: 50px;
}

.user-name-col {
    width: 20%;
}

.user-group-col {
    width: 20%;
}

.user-level-col {
    width: 15%;
}

.user-country-col {
    width: 15%;
}

.user-date-col {
    width: 25%;
}

.user-level-cell,
.user-pm-cell,
.user-country-cell,
.user-date-cell {
    text-align: center;
}

.user-name {
    font-weight: var(--font-weight-medium);
    color: var(--primary-color);
}

.user-tag {
    margin-top: var(--spacing-1);
    font-size: var(--font-size-sm);
}

.country-flag {
    margin-right: var(--spacing-2);
}

/* Pagination Styles */
.pagination-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: var(--spacing-4);
}

.pagination-stats {
    display: flex;
    gap: var(--spacing-4);
    color: var(--text-secondary);
    font-size: var(--font-size-sm);
}

.pagination-stats span {
    display: flex;
    align-items: center;
}

.pagination-stats i {
    margin-right: var(--spacing-1);
    color: var(--primary-color);
}

.pagination-stats strong {
    color: var(--text-primary);
    font-weight: var(--font-weight-semibold);
}

/* Mobile responsive */
@media (max-width: 768px) {
    .filter-grid {
        grid-template-columns: 1fr;
    }
    
    .orderby-fields {
        flex-direction: column;
    }
    
    .pagination-info {
        flex-direction: column;
        align-items: flex-start;
    }
    
    .user-group-col,
    .user-level-col,
    .user-date-col {
        display: none;
    }
    
    .users-table td {
        padding: var(--spacing-2);
    }
}

@media (max-width: 480px) {
    .user-country-col {
        display: none;
    }
    
    .filter-actions {
        flex-direction: column;
    }
    
    .filter-actions .btn {
        width: 100%;
    }
}
</style>
<!-- END: MAIN -->
