.class public final Lcom/appodeal/advertising/AdvertisingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;,
        Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;,
        Lcom/appodeal/advertising/AdvertisingInfo$GoogleAdvertisingProfile;,
        Lcom/appodeal/advertising/AdvertisingInfo$HuaweiAdvertisingProfile;,
        Lcom/appodeal/advertising/AdvertisingInfo$AmazonAdvertisingProfile;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0005\u000c\r\u000e\u000f\u0010J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/appodeal/advertising/AdvertisingInfo;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
        "getAdvertisingProfile",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "fetchAdvertisingProfile",
        "",
        "defaultAdvertisingId",
        "Ljava/lang/String;",
        "AdvertisingProfile",
        "AmazonAdvertisingProfile",
        "DefaultAdvertisingProfile",
        "GoogleAdvertisingProfile",
        "HuaweiAdvertisingProfile",
        "apd_advertising"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo;

.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/appodeal/advertising/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final defaultAdvertisingId:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appodeal/advertising/AdvertisingInfo;

    invoke-direct {v0}, Lcom/appodeal/advertising/AdvertisingInfo;-><init>()V

    sput-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    new-instance v1, Lcom/appodeal/advertising/AdvertisingInfo$GoogleAdvertisingProfile;

    invoke-direct {v1}, Lcom/appodeal/advertising/AdvertisingInfo$GoogleAdvertisingProfile;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/advertising/AdvertisingInfo$AmazonAdvertisingProfile;

    invoke-direct {v1}, Lcom/appodeal/advertising/AdvertisingInfo$AmazonAdvertisingProfile;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/appodeal/advertising/AdvertisingInfo$HuaweiAdvertisingProfile;

    invoke-direct {v1}, Lcom/appodeal/advertising/AdvertisingInfo$HuaweiAdvertisingProfile;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->a:Ljava/util/List;

    sget-object v0, Lcom/appodeal/advertising/b$c;->a:Lcom/appodeal/advertising/b$c;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$getDefaultProfile(Lcom/appodeal/advertising/AdvertisingInfo;Landroid/content/Context;)Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p0, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    invoke-virtual {p0, p1}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->extractParams$apd_advertising(Landroid/content/Context;)V

    return-object p0
.end method

.method public static final synthetic access$getState$p()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    sget-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$getSupportedAdvertisingProfiles$p()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final fetchAdvertisingProfile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/appodeal/advertising/AdvertisingInfo$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/appodeal/advertising/AdvertisingInfo$a;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAdvertisingProfile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/appodeal/advertising/AdvertisingInfo$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/appodeal/advertising/AdvertisingInfo$b;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
