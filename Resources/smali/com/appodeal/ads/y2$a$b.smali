.class public final Lcom/appodeal/ads/y2$a$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/y2$a;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.ProtoRequest$Stats"
    f = "ProtoRequest.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x4f
    }
    m = "createAppProto"
    n = {
        "appBuilder",
        "packageInfo"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/api/App$Builder;

.field public b:Landroid/content/pm/PackageInfo;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/appodeal/ads/y2$a;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/y2$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/y2$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/y2$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/y2$a$b;->d:Lcom/appodeal/ads/y2$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/y2$a$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/y2$a$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/y2$a$b;->e:I

    iget-object p1, p0, Lcom/appodeal/ads/y2$a$b;->d:Lcom/appodeal/ads/y2$a;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/appodeal/ads/y2$a;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
