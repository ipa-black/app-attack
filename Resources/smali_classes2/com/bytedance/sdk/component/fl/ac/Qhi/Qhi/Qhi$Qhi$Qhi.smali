.class Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Ljava/io/OutputStream;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;

    .line 867
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Ljava/io/OutputStream;Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$1;)V
    .locals 0

    .line 865
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;-><init>(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 890
    :catch_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Z)Z

    return-void
.end method

.method public flush()V
    .locals 2

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 898
    :catch_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Z)Z

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 874
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Z)Z

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 882
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi/Qhi$Qhi;Z)Z

    return-void
.end method
