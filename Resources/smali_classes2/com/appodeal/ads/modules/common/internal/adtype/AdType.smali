.class public final enum Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u000cR\u0017\u0010\u0016\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0004\u001a\u0004\u0008\u0015\u0010\u0006j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
        "",
        "",
        "a",
        "I",
        "getCode",
        "()I",
        "code",
        "",
        "b",
        "Ljava/lang/String;",
        "getCodeName",
        "()Ljava/lang/String;",
        "codeName",
        "c",
        "getServerCodeName",
        "serverCodeName",
        "d",
        "getDisplayName",
        "displayName",
        "e",
        "getNotifyType",
        "notifyType",
        "Banner",
        "Mrec",
        "Interstitial",
        "Video",
        "Rewarded",
        "Native",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final enum Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final enum Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final enum Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final enum Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final enum Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public static final synthetic f:[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v6, "Banner"

    const/4 v7, 0x4

    const-string v1, "Banner"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "banner"

    const-string v5, "banner_320"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Banner:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v15, "Mrec"

    const/16 v16, 0x100

    const-string v10, "Mrec"

    const/4 v11, 0x1

    const/16 v12, 0x100

    const-string v13, "mrec"

    const-string v14, "banner_mrec"

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Mrec:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v2, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v23, "Interstitial"

    const/16 v24, 0x3

    const-string v18, "Interstitial"

    const/16 v19, 0x2

    const/16 v20, 0x1

    const-string v21, "interstitial"

    const-string v22, "banner"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v3, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v15, "Video"

    const/16 v16, 0x3

    const-string v10, "Video"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string v13, "video"

    const-string v14, "video"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v4, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v23, "RewardedVideo"

    const/16 v24, 0x80

    const-string v18, "Rewarded"

    const/16 v19, 0x4

    const/16 v20, 0x80

    const-string v21, "rewarded_video"

    const-string v22, "rewarded_video"

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v24}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v5, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const-string v15, "Native"

    const/16 v16, 0x200

    const-string v10, "Native"

    const/4 v11, 0x5

    const/16 v12, 0x200

    const-string v13, "native"

    const-string v14, "native"

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 1
    filled-new-array/range {v0 .. v5}, [Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->f:[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->a:I

    iput-object p4, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->d:Ljava/lang/String;

    iput p7, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    const-class v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->f:[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->a:I

    return v0
.end method

.method public final getCodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotifyType()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->e:I

    return v0
.end method

.method public final getServerCodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->c:Ljava/lang/String;

    return-object v0
.end method
