.class public final Lcom/appodeal/consent/internal/c$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/c;->a(Lcom/appodeal/consent/internal/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.consent.internal.ConsentRequest"
    f = "ConsentRequest.kt"
    i = {}
    l = {
        0x14
    }
    m = "execute-0E7RQCE$apd_consent"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/appodeal/consent/internal/c;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/internal/c;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/consent/internal/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/internal/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/c$a;->b:Lcom/appodeal/consent/internal/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/consent/internal/c$a;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/consent/internal/c$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/consent/internal/c$a;->c:I

    iget-object p1, p0, Lcom/appodeal/consent/internal/c$a;->b:Lcom/appodeal/consent/internal/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/appodeal/consent/internal/c;->a(Lcom/appodeal/consent/internal/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
