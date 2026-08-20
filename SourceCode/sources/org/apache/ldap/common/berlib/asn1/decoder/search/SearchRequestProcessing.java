package org.apache.ldap.common.berlib.asn1.decoder.search;
/* loaded from: classes3.dex */
public class SearchRequestProcessing {
    public final State ATTRIBUTES_STATE;
    public final State BASE_OBJECT_STATE;
    public final State CONTROLS_STATE;
    public final State DEREF_ALIAS_STATE;
    public final State FILTER_STATE;
    public final State SCOPE_STATE;
    public final State SIZE_LIMIT_STATE;
    public final State TIME_LIMIT_STATE;
    public final State TYPES_ONLY_STATE;
    private State state;

    public SearchRequestProcessing() {
        BaseObjectState baseObjectState = new BaseObjectState(this);
        this.BASE_OBJECT_STATE = baseObjectState;
        this.SCOPE_STATE = new ScopeState(this);
        this.DEREF_ALIAS_STATE = new DerefAliasState(this);
        this.SIZE_LIMIT_STATE = new SizeLimitState(this);
        this.TIME_LIMIT_STATE = new TimeLimitState(this);
        this.TYPES_ONLY_STATE = new TypesOnlyState(this);
        this.FILTER_STATE = new FilterState(this);
        this.ATTRIBUTES_STATE = new AttributesState(this);
        this.CONTROLS_STATE = new ControlsState(this);
        this.state = baseObjectState;
    }

    public State getState() {
        return this.state;
    }

    public void reset() {
        this.state = this.BASE_OBJECT_STATE;
    }

    public void next() {
        this.state.next();
    }

    /* loaded from: classes3.dex */
    public abstract class State {
        protected abstract void next();

        public State() {
        }
    }

    /* loaded from: classes3.dex */
    protected class BaseObjectState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected BaseObjectState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.SCOPE_STATE;
        }

        public String toString() {
            return "BaseObject";
        }
    }

    /* loaded from: classes3.dex */
    protected class ScopeState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected ScopeState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.DEREF_ALIAS_STATE;
        }

        public String toString() {
            return "Scope";
        }
    }

    /* loaded from: classes3.dex */
    protected class DerefAliasState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected DerefAliasState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.SIZE_LIMIT_STATE;
        }

        public String toString() {
            return "DerefAliasState";
        }
    }

    /* loaded from: classes3.dex */
    protected class SizeLimitState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected SizeLimitState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.TIME_LIMIT_STATE;
        }

        public String toString() {
            return "SizeLimit";
        }
    }

    /* loaded from: classes3.dex */
    protected class TimeLimitState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected TimeLimitState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.TYPES_ONLY_STATE;
        }

        public String toString() {
            return "TimeLimit";
        }
    }

    /* loaded from: classes3.dex */
    protected class TypesOnlyState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected TypesOnlyState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.FILTER_STATE;
        }

        public String toString() {
            return "TypesOnly";
        }
    }

    /* loaded from: classes3.dex */
    protected class FilterState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected FilterState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.ATTRIBUTES_STATE;
        }

        public String toString() {
            return "Filter";
        }
    }

    /* loaded from: classes3.dex */
    protected class AttributesState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected AttributesState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.CONTROLS_STATE;
        }

        public String toString() {
            return "Attributes";
        }
    }

    /* loaded from: classes3.dex */
    protected class ControlsState extends State {
        private final /* synthetic */ SearchRequestProcessing this$0;

        protected ControlsState(SearchRequestProcessing searchRequestProcessing) {
            super();
            this.this$0 = searchRequestProcessing;
        }

        @Override // org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestProcessing.State
        protected void next() {
            SearchRequestProcessing searchRequestProcessing = this.this$0;
            searchRequestProcessing.state = searchRequestProcessing.BASE_OBJECT_STATE;
        }

        public String toString() {
            return "Controls";
        }
    }
}
