.class Lio/bidmachine/ads/networks/criteo/CriteoConfig$1;
.super Ljava/util/HashMap;
.source "CriteoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/criteo/CriteoConfig;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoConfig$1;->val$publisherId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 22
    const-string v0, "publisher_id"

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/criteo/CriteoConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
