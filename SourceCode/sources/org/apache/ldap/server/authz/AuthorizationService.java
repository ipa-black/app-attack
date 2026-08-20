package org.apache.ldap.server.authz;

import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.common.exception.LdapNoPermissionException;
import org.apache.ldap.common.name.DnParser;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.db.ResultFilteringEnumeration;
import org.apache.ldap.server.db.SearchResultFilter;
import org.apache.ldap.server.interceptor.BaseInterceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.Delete;
import org.apache.ldap.server.invocation.HasEntry;
import org.apache.ldap.server.invocation.Invocation;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Modify;
import org.apache.ldap.server.invocation.ModifyMany;
import org.apache.ldap.server.invocation.ModifyRN;
import org.apache.ldap.server.invocation.Move;
import org.apache.ldap.server.invocation.MoveAndModifyRN;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.jndi.ServerContext;
import org.apache.ldap.server.schema.ConcreteNameComponentNormalizer;
/* loaded from: classes3.dex */
public class AuthorizationService extends BaseInterceptor {
    private DnParser dnParser;
    private static final Name ADMIN_DN = SystemPartition.getAdminDn();
    private static final Name USER_BASE_DN = SystemPartition.getUsersBaseDn();
    private static final Name GROUP_BASE_DN = SystemPartition.getGroupsBaseDn();

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) throws NamingException {
        this.dnParser = new DnParser(new ConcreteNameComponentNormalizer(interceptorContext.getGlobalRegistries().getAttributeTypeRegistry()));
    }

    @Override // org.apache.ldap.server.interceptor.BaseInterceptor, org.apache.ldap.server.interceptor.Interceptor
    public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
        super.process(nextInterceptor, invocation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Delete delete) throws NamingException {
        Name name = delete.getName();
        Name dn = BaseInterceptor.getPrincipal(delete).getDn();
        if (name.toString().equals("")) {
            throw new LdapNoPermissionException("The rootDSE cannot be deleted!");
        }
        Name name2 = ADMIN_DN;
        if (name == name2 || name.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to delete the admin account.").toString())).append(" No one not even the admin can delete this account!").toString());
        }
        if (name.size() > 2 && name.startsWith(USER_BASE_DN) && !dn.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to delete the user account: ").toString())).append(name).append(". Only the admin can delete user accounts.").toString());
        }
        if (name.size() > 2 && name.startsWith(GROUP_BASE_DN) && !dn.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to delete the group entry: ").toString())).append(name).append(". Only the admin can delete groups.").toString());
        }
        nextInterceptor.process(delete);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, HasEntry hasEntry) throws NamingException {
        super.process(nextInterceptor, hasEntry);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Modify modify) throws NamingException {
        protectModifyAlterations(modify, modify.getName());
        nextInterceptor.process(modify);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyMany modifyMany) throws NamingException {
        protectModifyAlterations(modifyMany, modifyMany.getName());
        nextInterceptor.process(modifyMany);
    }

    private void protectModifyAlterations(Invocation invocation, Name name) throws LdapNoPermissionException {
        Name dn = BaseInterceptor.getPrincipal(invocation).getDn();
        if (name.toString().equals("")) {
            throw new LdapNoPermissionException("The rootDSE cannot be modified!");
        }
        Name name2 = ADMIN_DN;
        if (dn.equals(name2)) {
            return;
        }
        if (name == name2 || name.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to modify the admin account.").toString());
        }
        if (name.size() > 2 && name.startsWith(USER_BASE_DN)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to modify the account of the").toString())).append(" user ").append(name).append(".\nEven the owner of an account cannot").toString())).append(" modify it.\nUser accounts can only be modified by the").toString())).append(" administrator.").toString());
        }
        if (name.size() > 2 && name.startsWith(GROUP_BASE_DN)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to modify the group entry ").toString())).append(name).append(".\nGroups can only be modified by the admin.").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyRN modifyRN) throws NamingException {
        protectDnAlterations(modifyRN, modifyRN.getName());
        nextInterceptor.process(modifyRN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Move move) throws NamingException {
        protectDnAlterations(move, move.getName());
        nextInterceptor.process(move);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, MoveAndModifyRN moveAndModifyRN) throws NamingException {
        protectDnAlterations(moveAndModifyRN, moveAndModifyRN.getName());
        nextInterceptor.process(moveAndModifyRN);
    }

    private void protectDnAlterations(Invocation invocation, Name name) throws LdapNoPermissionException {
        Name dn = BaseInterceptor.getPrincipal(invocation).getDn();
        if (name.toString().equals("")) {
            throw new LdapNoPermissionException("The rootDSE cannot be moved or renamed!");
        }
        Name name2 = ADMIN_DN;
        if (name == name2 || name.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User '").append(dn).toString())).append("' does not have permission to move or rename the admin").toString())).append(" account.  No one not even the admin can move or").toString())).append(" rename ").append(name).append("!").toString());
        }
        if (name.size() > 2 && name.startsWith(USER_BASE_DN) && !dn.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User '").append(dn).toString())).append("' does not have permission to move or rename the user").toString())).append(" account: ").append(name).append(". Only the admin can move or").toString())).append(" rename user accounts.").toString());
        }
        if (name.size() > 2 && name.startsWith(GROUP_BASE_DN) && !dn.equals(name2)) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("User ").append(dn).toString())).append(" does not have permission to move or rename the group entry ").toString())).append(name).append(".\nGroups can only be moved or renamed by the admin.").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        super.process(nextInterceptor, lookup);
        Attributes attributes = (Attributes) lookup.getReturnValue();
        if (attributes == null) {
            return;
        }
        protectLookUp((LdapContext) lookup.getContextStack().peek(), lookup.getName());
        lookup.setReturnValue((Attributes) attributes.clone());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        super.process(nextInterceptor, lookupWithAttrIds);
        Attributes attributes = (Attributes) lookupWithAttrIds.getReturnValue();
        if (attributes == null) {
            return;
        }
        protectLookUp((LdapContext) lookupWithAttrIds.getContextStack().peek(), lookupWithAttrIds.getName());
        lookupWithAttrIds.setReturnValue((Attributes) attributes.clone());
    }

    private void protectLookUp(LdapContext ldapContext, Name name) throws NamingException {
        Name dn = ((ServerContext) ldapContext).getPrincipal().getDn();
        Name name2 = ADMIN_DN;
        if (dn.equals(name2)) {
            return;
        }
        if (name.size() > 2 && name.startsWith(USER_BASE_DN)) {
            if (!name.toString().equals(dn.toString())) {
                throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("Access to user account '").append(name).append("' not permitted").toString())).append(" for user '").append(dn).append("'.  Only the admin can").toString())).append(" access user account information").toString());
            }
        } else if (name.size() > 2 && name.startsWith(GROUP_BASE_DN)) {
            if (!name.toString().equals(dn.toString())) {
                throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer(String.valueOf(new StringBuffer("Access to group '").append(name).append("' not permitted").toString())).append(" for user '").append(dn).append("'.  Only the admin can").toString())).append(" access group information").toString());
            }
        } else if (name.equals(name2) && !name.toString().equals(dn.toString())) {
            throw new LdapNoPermissionException(new StringBuffer(String.valueOf(new StringBuffer("Access to admin account not permitted for user '").append(dn).append("'.  Only the admin can").toString())).append(" access admin account information").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        super.process(nextInterceptor, search);
        SearchControls controls = search.getControls();
        if (controls.getReturningAttributes() != null) {
            return;
        }
        search.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) search.getReturnValue(), controls, (LdapContext) search.getContextStack().peek(), new SearchResultFilter() { // from class: org.apache.ldap.server.authz.AuthorizationService.1
            @Override // org.apache.ldap.server.db.SearchResultFilter
            public boolean accept(LdapContext ldapContext, SearchResult searchResult, SearchControls searchControls) throws NamingException {
                return AuthorizationService.this.isSearchable(ldapContext, searchResult);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        super.process(nextInterceptor, list);
        list.setReturnValue(new ResultFilteringEnumeration((NamingEnumeration) list.getReturnValue(), (SearchControls) null, (LdapContext) list.getContextStack().peek(), new SearchResultFilter() { // from class: org.apache.ldap.server.authz.AuthorizationService.2
            @Override // org.apache.ldap.server.db.SearchResultFilter
            public boolean accept(LdapContext ldapContext, SearchResult searchResult, SearchControls searchControls) throws NamingException {
                return AuthorizationService.this.isSearchable(ldapContext, searchResult);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSearchable(LdapContext ldapContext, SearchResult searchResult) throws NamingException {
        Name parse;
        synchronized (this.dnParser) {
            parse = this.dnParser.parse(searchResult.getName());
        }
        Name dn = ((ServerContext) ldapContext).getPrincipal().getDn();
        Name name = ADMIN_DN;
        if (dn.equals(name)) {
            return true;
        }
        return (parse.size() <= 2 || !(parse.startsWith(USER_BASE_DN) || parse.startsWith(GROUP_BASE_DN))) && !parse.equals(name);
    }
}
