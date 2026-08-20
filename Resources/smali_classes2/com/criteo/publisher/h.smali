.class public abstract Lcom/criteo/publisher/h;
.super Ljava/lang/Object;
.source "CdbCallListener.kt"


# instance fields
.field private final a:Lcom/criteo/publisher/c0/a;

.field private final b:Lcom/criteo/publisher/e;

.field private final c:Lcom/criteo/publisher/l0/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/c0/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/l0/a;)V
    .locals 1

    const-string v0, "bidLifecycleListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/h;->a:Lcom/criteo/publisher/c0/a;

    iput-object p2, p0, Lcom/criteo/publisher/h;->b:Lcom/criteo/publisher/e;

    iput-object p3, p0, Lcom/criteo/publisher/h;->c:Lcom/criteo/publisher/l0/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/o;)V
    .locals 1

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/criteo/publisher/h;->a:Lcom/criteo/publisher/c0/a;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/o;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 3

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdbResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/criteo/publisher/h;->c:Lcom/criteo/publisher/l0/a;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/l0/a;->a(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/h;->b:Lcom/criteo/publisher/e;

    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e;->a(I)V

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/h;->a:Lcom/criteo/publisher/c0/a;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/criteo/publisher/h;->a:Lcom/criteo/publisher/c0/a;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/c0/a;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    return-void
.end method
