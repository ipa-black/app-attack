.class public final Lcom/appodeal/ads/x4$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/x4;->a(Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.SdkCoreInitializerImpl"
    f = "SdkCoreInitializer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x54,
        0x55
    }
    m = "invoke-yxL6bBk"
    n = {
        "this",
        "application",
        "appKey",
        "consent",
        "hasConsent",
        "applicationContext",
        "this"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/x4;

.field public b:Landroid/app/Application;

.field public c:Ljava/lang/String;

.field public d:Lcom/appodeal/consent/Consent;

.field public e:Ljava/lang/Boolean;

.field public f:Landroid/content/Context;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/appodeal/ads/x4;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/x4;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/x4$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/x4$a;->h:Lcom/appodeal/ads/x4;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/appodeal/ads/x4$a;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/x4$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/x4$a;->i:I

    iget-object v0, p0, Lcom/appodeal/ads/x4$a;->h:Lcom/appodeal/ads/x4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appodeal/ads/x4;->a(Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
