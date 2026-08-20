.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;
.super Ljava/lang/Object;
.source "SearchRequestProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$AttributesState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$FilterState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TypesOnlyState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TimeLimitState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$SizeLimitState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$DerefAliasState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ScopeState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$BaseObjectState;,
        Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;
    }
.end annotation


# instance fields
.field public final ATTRIBUTES_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final BASE_OBJECT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final CONTROLS_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final DEREF_ALIAS_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final FILTER_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final SCOPE_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final SIZE_LIMIT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final TIME_LIMIT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field public final TYPES_ONLY_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

.field private state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$BaseObjectState;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$BaseObjectState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->BASE_OBJECT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 36
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ScopeState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ScopeState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->SCOPE_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 38
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$DerefAliasState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$DerefAliasState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->DEREF_ALIAS_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 40
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$SizeLimitState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$SizeLimitState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->SIZE_LIMIT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 42
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TimeLimitState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TimeLimitState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->TIME_LIMIT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 44
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TypesOnlyState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$TypesOnlyState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->TYPES_ONLY_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 46
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$FilterState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$FilterState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->FILTER_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 48
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$AttributesState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$AttributesState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->ATTRIBUTES_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 50
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;

    invoke-direct {v1, p0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object v1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->CONTROLS_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    .line 54
    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    return-void
.end method

.method static synthetic access$002(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;)Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    return-object p1
.end method


# virtual methods
.method public getState()Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    return-object v0
.end method

.method public next()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;->next()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->BASE_OBJECT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->state:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    return-void
.end method
