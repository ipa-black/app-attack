.class public final Lcom/appodeal/consent/internal/d$f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/d$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/internal/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/consent/internal/d$f$a;->a:Lcom/appodeal/consent/internal/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/app/Activity;

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$f$a;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {v0, p1}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f$a;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->c(Lcom/appodeal/consent/internal/d;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/appodeal/consent/internal/e;

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f$a;->a:Lcom/appodeal/consent/internal/d;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/appodeal/consent/internal/e;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
