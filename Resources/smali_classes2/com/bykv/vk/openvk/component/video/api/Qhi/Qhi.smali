.class public Lcom/bykv/vk/openvk/component/video/api/Qhi/Qhi;
.super Ljava/lang/Object;
.source "ClearVideoCacheModel.java"


# instance fields
.field private Qhi:[Ljava/io/File;

.field private cJ:I


# direct methods
.method public constructor <init>([Ljava/io/File;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/Qhi/Qhi;->Qhi:[Ljava/io/File;

    .line 15
    iput p2, p0, Lcom/bykv/vk/openvk/component/video/api/Qhi/Qhi;->cJ:I

    return-void
.end method


# virtual methods
.method public Qhi()[Ljava/io/File;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/Qhi/Qhi;->Qhi:[Ljava/io/File;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/Qhi/Qhi;->cJ:I

    return v0
.end method
