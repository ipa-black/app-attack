.class public final Lcom/appodeal/ads/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/i$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/i$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/i$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/i$c;->d:Lorg/json/JSONArray;

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/i$c;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/i$c;->d:Lorg/json/JSONArray;

    return-object p0
.end method

.method public static synthetic b(Lcom/appodeal/ads/i$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/i$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/appodeal/ads/i$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/i$c;->c:Ljava/lang/String;

    return-object p0
.end method
