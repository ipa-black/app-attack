.class public Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/Gm/ac/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field public final Qhi:Ljava/lang/String;

.field public final cJ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;->Qhi:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;->cJ:Lorg/json/JSONObject;

    return-void
.end method
