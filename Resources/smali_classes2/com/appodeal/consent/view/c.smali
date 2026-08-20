.class public final Lcom/appodeal/consent/view/c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/view/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/consent/view/c;->a:Lcom/appodeal/consent/view/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/consent/view/c;->a:Lcom/appodeal/consent/view/b;

    invoke-static {v0}, Lcom/appodeal/consent/view/b;->a(Lcom/appodeal/consent/view/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/consent/view/b;->a(Lcom/appodeal/consent/view/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/consent/view/c;->a:Lcom/appodeal/consent/view/b;

    .line 2
    iget-object v0, v0, Lcom/appodeal/consent/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/consent/view/c;->a:Lcom/appodeal/consent/view/b;

    .line 4
    iget-object v0, v0, Lcom/appodeal/consent/view/b;->a:Lcom/appodeal/consent/view/b$c;

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lcom/appodeal/consent/view/b$c;->a(Lorg/json/JSONObject;)V

    .line 6
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
