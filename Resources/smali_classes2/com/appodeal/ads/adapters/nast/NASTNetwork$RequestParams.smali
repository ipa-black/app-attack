.class public final Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/nast/NASTNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public final restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/adapters/nast/NASTNetwork$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;-><init>(Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;)V

    return-void
.end method
