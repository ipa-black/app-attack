.class public final Lcom/appodeal/consent/view/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/consent/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/view/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/view/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/consent/view/b$b;->a:Lcom/appodeal/consent/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeWebView()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/consent/view/b$b;->a:Lcom/appodeal/consent/view/b;

    invoke-static {v0}, Lcom/appodeal/consent/view/b;->g(Lcom/appodeal/consent/view/b;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/appodeal/consent/view/b$b$a;

    iget-object v0, p0, Lcom/appodeal/consent/view/b$b;->a:Lcom/appodeal/consent/view/b;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/appodeal/consent/view/b$b$a;-><init>(Lcom/appodeal/consent/view/b;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "consentString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/consent/view/b$b;->a:Lcom/appodeal/consent/view/b;

    invoke-static {v0}, Lcom/appodeal/consent/view/b;->e(Lcom/appodeal/consent/view/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/consent/view/b$b;->a:Lcom/appodeal/consent/view/b;

    invoke-static {v0}, Lcom/appodeal/consent/view/b;->d(Lcom/appodeal/consent/view/b;)Lcom/appodeal/consent/view/b$c;

    move-result-object v0

    invoke-static {p1}, Lcom/appodeal/consent/view/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appodeal/consent/view/b$c;->a(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
