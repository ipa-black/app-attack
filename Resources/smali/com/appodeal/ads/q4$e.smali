.class public final Lcom/appodeal/ads/q4$e;
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
        "Lcom/appodeal/ads/n0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/q4$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/q4$e;

    invoke-direct {v0}, Lcom/appodeal/ads/q4$e;-><init>()V

    sput-object v0, Lcom/appodeal/ads/q4$e;->a:Lcom/appodeal/ads/q4$e;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/appodeal/ads/n0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/n0;-><init>(I)V

    return-object v0
.end method
