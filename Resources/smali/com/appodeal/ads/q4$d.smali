.class public final Lcom/appodeal/ads/q4$d;
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
        "Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/q4$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/q4$d;

    invoke-direct {v0}, Lcom/appodeal/ads/q4$d;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4$d;->a:Lcom/appodeal/ads/q4$d;

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
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;-><init>()V

    return-object v0
.end method
