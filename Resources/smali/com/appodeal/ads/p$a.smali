.class public final Lcom/appodeal/ads/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/appodeal/ads/p$a;

.field public static final c:Lcom/appodeal/ads/p$a;

.field public static final d:Lcom/appodeal/ads/p$a;

.field public static final e:Lcom/appodeal/ads/p$a;

.field public static final f:Lcom/appodeal/ads/p$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/p$a;

    const-string v1, "isn\'t initialized"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/p$a;->b:Lcom/appodeal/ads/p$a;

    new-instance v0, Lcom/appodeal/ads/p$a;

    const-string v1, "Network Connection"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/p$a;->c:Lcom/appodeal/ads/p$a;

    new-instance v0, Lcom/appodeal/ads/p$a;

    const-string v1, "Pause"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/p$a;->d:Lcom/appodeal/ads/p$a;

    new-instance v0, Lcom/appodeal/ads/p$a;

    const-string v1, "disabled"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/p$a;->e:Lcom/appodeal/ads/p$a;

    new-instance v0, Lcom/appodeal/ads/p$a;

    const-string v1, "disabled by segment"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/p$a;->f:Lcom/appodeal/ads/p$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/p$a;->a:Ljava/lang/String;

    return-void
.end method
