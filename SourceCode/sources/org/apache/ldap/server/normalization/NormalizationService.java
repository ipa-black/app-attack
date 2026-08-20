package org.apache.ldap.server.normalization;

import javax.naming.NamingException;
import org.apache.ldap.common.name.DnParser;
import org.apache.ldap.common.name.NameComponentNormalizer;
import org.apache.ldap.server.interceptor.BaseInterceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.Add;
import org.apache.ldap.server.invocation.Delete;
import org.apache.ldap.server.invocation.GetMatchedDN;
import org.apache.ldap.server.invocation.GetSuffix;
import org.apache.ldap.server.invocation.HasEntry;
import org.apache.ldap.server.invocation.IsSuffix;
import org.apache.ldap.server.invocation.List;
import org.apache.ldap.server.invocation.Lookup;
import org.apache.ldap.server.invocation.LookupWithAttrIds;
import org.apache.ldap.server.invocation.Modify;
import org.apache.ldap.server.invocation.ModifyMany;
import org.apache.ldap.server.invocation.ModifyRN;
import org.apache.ldap.server.invocation.Move;
import org.apache.ldap.server.invocation.MoveAndModifyRN;
import org.apache.ldap.server.invocation.Search;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
/* loaded from: classes3.dex */
public class NormalizationService extends BaseInterceptor {
    private DnParser parser;

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) throws NamingException {
        this.parser = new DnParser(new PerComponentNormalizer(interceptorContext.getGlobalRegistries().getAttributeTypeRegistry()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Add add) throws NamingException {
        synchronized (this.parser) {
            add.setNormalizedName(this.parser.parse(add.getNormalizedName().toString()));
        }
        super.process(nextInterceptor, add);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Delete delete) throws NamingException {
        synchronized (this.parser) {
            delete.setName(this.parser.parse(delete.getName().toString()));
        }
        super.process(nextInterceptor, delete);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Modify modify) throws NamingException {
        synchronized (this.parser) {
            modify.setName(this.parser.parse(modify.getName().toString()));
        }
        super.process(nextInterceptor, modify);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyMany modifyMany) throws NamingException {
        synchronized (this.parser) {
            modifyMany.setName(this.parser.parse(modifyMany.getName().toString()));
        }
        super.process(nextInterceptor, modifyMany);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, ModifyRN modifyRN) throws NamingException {
        synchronized (this.parser) {
            modifyRN.setName(this.parser.parse(modifyRN.getName().toString()));
        }
        super.process(nextInterceptor, modifyRN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Move move) throws NamingException {
        synchronized (this.parser) {
            move.setName(this.parser.parse(move.getName().toString()));
            move.setNewParentName(this.parser.parse(move.getNewParentName().toString()));
        }
        super.process(nextInterceptor, move);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, MoveAndModifyRN moveAndModifyRN) throws NamingException {
        synchronized (this.parser) {
            moveAndModifyRN.setName(this.parser.parse(moveAndModifyRN.getName().toString()));
            moveAndModifyRN.setNewParentName(this.parser.parse(moveAndModifyRN.getNewParentName().toString()));
        }
        super.process(nextInterceptor, moveAndModifyRN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Search search) throws NamingException {
        synchronized (this.parser) {
            search.setBaseName(this.parser.parse(search.getBaseName().toString()));
        }
        super.process(nextInterceptor, search);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, HasEntry hasEntry) throws NamingException {
        synchronized (this.parser) {
            hasEntry.setName(this.parser.parse(hasEntry.getName().toString()));
        }
        super.process(nextInterceptor, hasEntry);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, IsSuffix isSuffix) throws NamingException {
        synchronized (this.parser) {
            isSuffix.setName(this.parser.parse(isSuffix.getName().toString()));
        }
        super.process(nextInterceptor, isSuffix);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, List list) throws NamingException {
        synchronized (this.parser) {
            list.setBaseName(this.parser.parse(list.getBaseName().toString()));
        }
        super.process(nextInterceptor, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, Lookup lookup) throws NamingException {
        synchronized (this.parser) {
            lookup.setName(this.parser.parse(lookup.getName().toString()));
        }
        super.process(nextInterceptor, lookup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, LookupWithAttrIds lookupWithAttrIds) throws NamingException {
        synchronized (this.parser) {
            lookupWithAttrIds.setName(this.parser.parse(lookupWithAttrIds.getName().toString()));
        }
        super.process(nextInterceptor, lookupWithAttrIds);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, GetMatchedDN getMatchedDN) throws NamingException {
        synchronized (this.parser) {
            getMatchedDN.setName(this.parser.parse(getMatchedDN.getName().toString()));
        }
        super.process(nextInterceptor, getMatchedDN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.ldap.server.interceptor.BaseInterceptor
    public void process(NextInterceptor nextInterceptor, GetSuffix getSuffix) throws NamingException {
        synchronized (this.parser) {
            getSuffix.setName(this.parser.parse(getSuffix.getName().toString()));
        }
        super.process(nextInterceptor, getSuffix);
    }

    /* loaded from: classes3.dex */
    class PerComponentNormalizer implements NameComponentNormalizer {
        private final AttributeTypeRegistry registry;

        public PerComponentNormalizer(AttributeTypeRegistry attributeTypeRegistry) {
            this.registry = attributeTypeRegistry;
        }

        @Override // org.apache.ldap.common.name.NameComponentNormalizer
        public String normalizeByName(String str, String str2) throws NamingException {
            return (String) this.registry.lookup(str).getEquality().getNormalizer().normalize(str2);
        }

        @Override // org.apache.ldap.common.name.NameComponentNormalizer
        public String normalizeByOid(String str, String str2) throws NamingException {
            return (String) this.registry.lookup(str).getEquality().getNormalizer().normalize(str2);
        }
    }
}
