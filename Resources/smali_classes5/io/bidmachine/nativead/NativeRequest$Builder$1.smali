.class Lio/bidmachine/nativead/NativeRequest$Builder$1;
.super Ljava/util/ArrayList;
.source "NativeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/bidmachine/MediaAssetType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeRequest$Builder;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeRequest$Builder;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/bidmachine/nativead/NativeRequest$Builder$1;->this$0:Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    sget-object p1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder$1;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
