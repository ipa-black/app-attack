.class public final Lcom/appodeal/ads/q4$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/q4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/appodeal/ads/u<",
        "+",
        "Lcom/appodeal/ads/l<",
        "+",
        "Lcom/appodeal/ads/r<",
        "+",
        "Lcom/appodeal/ads/l<",
        "****>;>;+",
        "Lcom/appodeal/ads/unified/UnifiedAd<",
        "+",
        "Lcom/appodeal/ads/unified/UnifiedAdParams;",
        "+",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        "+",
        "Ljava/lang/Object;",
        ">;+",
        "Lcom/appodeal/ads/unified/UnifiedAdParams;",
        "+",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        ">;+",
        "Lcom/appodeal/ads/r<",
        "+",
        "Lcom/appodeal/ads/l<",
        "+",
        "Lcom/appodeal/ads/r<",
        "*>;+",
        "Lcom/appodeal/ads/unified/UnifiedAd<",
        "***>;+",
        "Lcom/appodeal/ads/unified/UnifiedAdParams;",
        "+",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        ">;>;+",
        "Lcom/appodeal/ads/s<",
        "*>;>;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/q4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/q4$a;

    invoke-direct {v0}, Lcom/appodeal/ads/q4$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4$a;->a:Lcom/appodeal/ads/q4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lcom/appodeal/ads/u;

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
