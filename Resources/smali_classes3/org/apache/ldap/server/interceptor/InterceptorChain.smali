.class public Lorg/apache/ldap/server/interceptor/InterceptorChain;
.super Ljava/lang/Object;
.source "InterceptorChain.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;
    }
.end annotation


# static fields
.field public static final NEXT_INTERCEPTOR:Ljava/lang/String; = "nextInterceptor"


# instance fields
.field private final FINAL_INTERCEPTOR:Lorg/apache/ldap/server/interceptor/Interceptor;

.field private final NEXT_INTERCEPTOR0:Lorg/apache/ldap/server/interceptor/Interceptor;

.field private head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

.field private final interceptor2entry:Ljava/util/Map;

.field private final name2entry:Ljava/util/Map;

.field private parent:Lorg/apache/ldap/server/interceptor/InterceptorChain;

.field private final tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v5, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;

    invoke-direct {v5, p0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$1;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;)V

    iput-object v5, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->NEXT_INTERCEPTOR0:Lorg/apache/ldap/server/interceptor/Interceptor;

    .line 102
    new-instance v11, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;

    invoke-direct {v11, p0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$2;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;)V

    iput-object v11, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->FINAL_INTERCEPTOR:Lorg/apache/ldap/server/interceptor/Interceptor;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->interceptor2entry:Ljava/util/Map;

    .line 136
    new-instance v6, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    const/4 v3, 0x0

    const-string v4, "nextInterceptor"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    iput-object v6, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 138
    new-instance v0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    const/4 v9, 0x0

    const-string v10, "end"

    const/4 v8, 0x0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    iput-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 146
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {v1, v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 148
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {v0, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 150
    const-string v0, "nextInterceptor"

    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Lorg/apache/ldap/server/interceptor/InterceptorChain;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->parent:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    return-object p0
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain;)Ljava/util/Map;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->interceptor2entry:Ljava/util/Map;

    return-object p0
.end method

.method private checkAddable(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    instance-of p1, p2, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-eqz p1, :cond_1

    .line 459
    check-cast p2, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    iget-object p1, p2, Lorg/apache/ldap/server/interceptor/InterceptorChain;->parent:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-nez p1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This interceptor chain has its parent already."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 454
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Other interceptor is using name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;
    .locals 3

    .line 436
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    if-eqz v0, :cond_0

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown interceptor name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getName(Lorg/apache/ldap/server/interceptor/Interceptor;)Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->interceptor2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$5(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newDefaultChain()Lorg/apache/ldap/server/interceptor/InterceptorChain;
    .locals 4

    .line 58
    new-instance v0, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    invoke-direct {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;-><init>()V

    .line 60
    new-instance v1, Lorg/apache/ldap/server/normalization/NormalizationService;

    invoke-direct {v1}, Lorg/apache/ldap/server/normalization/NormalizationService;-><init>()V

    const-string v2, "normalizationService"

    invoke-virtual {v0, v2, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addFirst(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 62
    new-instance v1, Lorg/apache/ldap/server/authn/AuthenticationService;

    invoke-direct {v1}, Lorg/apache/ldap/server/authn/AuthenticationService;-><init>()V

    const-string v2, "nextInterceptor"

    const-string v3, "authenticationService"

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 64
    new-instance v1, Lorg/apache/ldap/server/authz/AuthorizationService;

    invoke-direct {v1}, Lorg/apache/ldap/server/authz/AuthorizationService;-><init>()V

    const-string v3, "authorizationService"

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 66
    new-instance v1, Lorg/apache/ldap/server/exception/ExceptionService;

    invoke-direct {v1}, Lorg/apache/ldap/server/exception/ExceptionService;-><init>()V

    const-string v3, "exceptionService"

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 68
    new-instance v1, Lorg/apache/ldap/server/schema/SchemaService;

    invoke-direct {v1}, Lorg/apache/ldap/server/schema/SchemaService;-><init>()V

    const-string v3, "schemaService"

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 70
    new-instance v1, Lorg/apache/ldap/server/operational/OperationalAttributeService;

    invoke-direct {v1}, Lorg/apache/ldap/server/operational/OperationalAttributeService;-><init>()V

    const-string v3, "operationalAttributeService"

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    return-object v0
.end method

.method private register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    .locals 2

    .line 416
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->interceptor2entry:Ljava/util/Map;

    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    instance-of p1, v0, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-eqz p1, :cond_0

    .line 424
    check-cast v0, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    iput-object p0, v0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->parent:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 7

    monitor-enter p0

    .line 342
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkOldName(Ljava/lang/String;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v2

    .line 344
    invoke-direct {p0, p2, p3}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkAddable(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 346
    invoke-static {v2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object p1

    .line 348
    new-instance v6, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    if-eqz p1, :cond_0

    .line 355
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object p3

    invoke-static {p3, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 357
    invoke-static {p1, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 359
    invoke-direct {p0, p2, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 8

    monitor-enter p0

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkOldName(Ljava/lang/String;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object p1

    .line 312
    invoke-direct {p0, p2, p3}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkAddable(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 314
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v6

    .line 316
    new-instance v7, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    if-nez v6, :cond_0

    .line 320
    invoke-static {p1, v7}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 322
    iput-object v7, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {p1, v7}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 329
    invoke-static {v6, v7}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 332
    :goto_0
    invoke-direct {p0, p2, v7}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 7

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkAddable(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 269
    new-instance v6, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    iget-object v3, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 271
    iget-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {p2, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 273
    iput-object v6, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 275
    invoke-direct {p0, p1, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 7

    monitor-enter p0

    .line 285
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkAddable(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 287
    new-instance v6, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V

    .line 289
    iget-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 291
    iget-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object p2

    invoke-static {p2, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    goto :goto_0

    .line 295
    :cond_0
    iput-object v6, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 298
    :goto_0
    iget-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    invoke-static {p2, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 300
    invoke-direct {p0, p1, v6}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->register(Ljava/lang/String;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 405
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 411
    monitor-exit p0

    return-void

    .line 409
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->getAllReversed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 214
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 227
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/interceptor/Interceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :try_start_2
    invoke-interface {v1}, Lorg/apache/ldap/server/interceptor/Interceptor;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 224
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/ldap/server/interceptor/Interceptor;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 3

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 502
    :cond_0
    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->tail:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 523
    :cond_0
    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-static {v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public declared-synchronized init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    move-object v2, v1

    .line 165
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/server/interceptor/Interceptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    :try_start_3
    invoke-direct {p0, v3}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->getName(Lorg/apache/ldap/server/interceptor/Interceptor;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getConfig()Ljava/util/Map;

    move-result-object v4

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-static {v4, v2}, Lorg/apache/ldap/server/interceptor/InterceptorConfigBuilder;->build(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 173
    new-instance v2, Lorg/apache/ldap/server/interceptor/InterceptorContext;

    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getEnvironment()Ljava/util/Map;

    move-result-object v6

    .line 174
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getSystemPartition()Lorg/apache/ldap/server/SystemPartition;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getRootNexus()Lorg/apache/ldap/server/RootNexus;

    move-result-object v9

    move-object v5, v2

    .line 173
    invoke-direct/range {v5 .. v10}, Lorg/apache/ldap/server/interceptor/InterceptorContext;-><init>(Ljava/util/Map;Lorg/apache/ldap/server/SystemPartition;Lorg/apache/ldap/server/schema/GlobalRegistries;Lorg/apache/ldap/server/RootNexus;Ljava/util/Map;)V

    .line 176
    invoke-interface {v3, v2}, Lorg/apache/ldap/server/interceptor/Interceptor;->init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 181
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    instance-of v0, p1, Ljavax/naming/NamingException;

    if-eqz v0, :cond_2

    .line 197
    check-cast p1, Ljavax/naming/NamingException;

    throw p1

    .line 201
    :cond_2
    new-instance v0, Lorg/apache/ldap/server/interceptor/InterceptorException;

    const-string v3, "Failed to initialize interceptor chain."

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/apache/ldap/server/interceptor/InterceptorException;-><init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 183
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ldap/server/interceptor/Interceptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 187
    :try_start_5
    invoke-interface {v3}, Lorg/apache/ldap/server/interceptor/Interceptor;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    .line 191
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 474
    iget-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 478
    :try_start_0
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/NextInterceptor;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/ldap/server/interceptor/Interceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 486
    new-instance v1, Lorg/apache/ldap/server/interceptor/InterceptorException;

    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object p1

    const-string v2, "Unexpected exception."

    invoke-direct {v1, p1, p2, v2, v0}, Lorg/apache/ldap/server/interceptor/InterceptorException;-><init>(Lorg/apache/ldap/server/interceptor/Interceptor;Lorg/apache/ldap/server/invocation/Invocation;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception p1

    .line 482
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/interceptor/InterceptorChain;->checkOldName(Ljava/lang/String;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v1

    .line 372
    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 376
    invoke-static {v2, v3}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 378
    iput-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->head:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 384
    invoke-static {v2, v1}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    .line 387
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {v0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;

    move-result-object p1

    .line 391
    iget-object v0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain;->interceptor2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    instance-of v0, p1, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-eqz v0, :cond_1

    .line 395
    check-cast p1, Lorg/apache/ldap/server/interceptor/InterceptorChain;

    iput-object v3, p1, Lorg/apache/ldap/server/interceptor/InterceptorChain;->parent:Lorg/apache/ldap/server/interceptor/InterceptorChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
