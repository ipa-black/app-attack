.class public final enum Lio/bidmachine/TrackEventType;
.super Ljava/lang/Enum;
.source "TrackEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/TrackEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequest:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestCancel:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestExpired:Lio/bidmachine/TrackEventType;

.field public static final enum Click:Lio/bidmachine/TrackEventType;

.field public static final enum Close:Lio/bidmachine/TrackEventType;

.field public static final enum Destroy:Lio/bidmachine/TrackEventType;

.field public static final enum Error:Lio/bidmachine/TrackEventType;

.field public static final enum Expired:Lio/bidmachine/TrackEventType;

.field public static final enum FillAd:Lio/bidmachine/TrackEventType;

.field public static final enum GetBidToken:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum Impression:Lio/bidmachine/TrackEventType;

.field public static final enum InitLoading:Lio/bidmachine/TrackEventType;

.field public static final enum Load:Lio/bidmachine/TrackEventType;

.field public static final enum MediationLoss:Lio/bidmachine/TrackEventType;

.field public static final enum MediationWin:Lio/bidmachine/TrackEventType;

.field public static final enum Show:Lio/bidmachine/TrackEventType;

.field public static final enum TrackingError:Lio/bidmachine/TrackEventType;


# instance fields
.field private final ortbActionValue:I

.field private final ortbExtValue:I

.field private final ortbValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 13
    new-instance v7, Lio/bidmachine/TrackEventType;

    move-object v6, v7

    const/16 v4, 0x201

    const/16 v5, 0x201

    const-string v1, "GetBidToken"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    .line 14
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v7, v0

    const/16 v12, 0x1fa

    const/16 v13, 0x1fa

    const-string v9, "InitLoading"

    const/4 v10, 0x1

    const/4 v11, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 17
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v8, v0

    const/16 v18, 0x1fb

    const/16 v19, 0x1fb

    const-string v15, "AuctionRequest"

    const/16 v16, 0x2

    const/16 v17, -0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 20
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v9, v0

    const/16 v24, 0x1fc

    const/16 v25, 0x1fc

    const-string v21, "AuctionRequestCancel"

    const/16 v22, 0x3

    const/16 v23, -0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 23
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v10, v0

    const/16 v15, 0x1fd

    const/16 v16, 0x1fd

    const-string v12, "AuctionRequestExpired"

    const/4 v13, 0x4

    const/4 v14, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 26
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v11, v0

    const/16 v21, 0x1fe

    const/16 v22, 0x1fe

    const-string v18, "AuctionRequestDestroy"

    const/16 v19, 0x5

    const/16 v20, -0x1

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 29
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v12, v0

    const/16 v27, 0x1f4

    const/16 v28, 0x1f4

    const-string v24, "Load"

    const/16 v25, 0x6

    const/16 v26, -0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 32
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v13, v0

    const/16 v18, 0x200

    const/16 v19, 0x200

    const-string v15, "FillAd"

    const/16 v16, 0x7

    const/16 v17, -0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    .line 35
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v14, v0

    const/16 v24, 0x1f6

    const/16 v25, 0x1f6

    const-string v21, "Impression"

    const/16 v22, 0x8

    const/16 v23, -0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    .line 38
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object v15, v0

    const/16 v30, 0x1f5

    const/16 v31, 0x1f5

    const-string v27, "Show"

    const/16 v28, 0x9

    const/16 v29, 0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 41
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v16, v0

    const/16 v21, 0x1f7

    const/16 v22, 0x1f7

    const-string v18, "Click"

    const/16 v19, 0xa

    const/16 v20, -0x1

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 44
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v17, v0

    const/16 v27, 0x1f8

    const/16 v28, 0x1f8

    const-string v24, "Close"

    const/16 v25, 0xb

    const/16 v26, -0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    .line 47
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v18, v0

    const/16 v33, 0x1ff

    const/16 v34, 0x1ff

    const-string v30, "Expired"

    const/16 v31, 0xc

    const/16 v32, -0x1

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    .line 50
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v19, v0

    const/16 v24, 0x3e8

    const/16 v25, 0x3e8

    const-string v21, "Error"

    const/16 v22, 0xd

    const/16 v23, -0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 53
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v20, v0

    const/16 v30, 0x1f9

    const/16 v31, 0x1f9

    const-string v27, "Destroy"

    const/16 v28, 0xe

    const/16 v29, -0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    .line 56
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v21, v0

    const/16 v36, 0x3e9

    const/16 v37, 0x3e9

    const-string v33, "TrackingError"

    const/16 v34, 0xf

    const/16 v35, -0x1

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 59
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v22, v0

    const/16 v27, 0x2bf

    const/16 v28, 0x2bf

    const-string v24, "HeaderBiddingNetworksPrepare"

    const/16 v25, 0x10

    const/16 v26, -0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 62
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v23, v0

    const/16 v33, 0x2bd

    const/16 v34, 0x2bd

    const-string v30, "HeaderBiddingNetworkInitialize"

    const/16 v31, 0x11

    const/16 v32, -0x1

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 65
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v24, v0

    const/16 v39, 0x2be

    const/16 v40, 0x2be

    const-string v36, "HeaderBiddingNetworkPrepare"

    const/16 v37, 0x12

    const/16 v38, -0x1

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 68
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v25, v0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const-string v27, "MediationWin"

    const/16 v28, 0x13

    const/16 v29, -0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 69
    new-instance v0, Lio/bidmachine/TrackEventType;

    move-object/from16 v26, v0

    const/16 v36, -0x1

    const/16 v37, -0x1

    const-string v33, "MediationLoss"

    const/16 v34, 0x14

    const/16 v35, -0x1

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 11
    filled-new-array/range {v6 .. v26}, [Lio/bidmachine/TrackEventType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lio/bidmachine/TrackEventType;->ortbValue:I

    .line 77
    iput p4, p0, Lio/bidmachine/TrackEventType;->ortbExtValue:I

    .line 78
    iput p5, p0, Lio/bidmachine/TrackEventType;->ortbActionValue:I

    return-void
.end method

.method public static fromNumber(I)Lio/bidmachine/TrackEventType;
    .locals 5

    .line 83
    invoke-static {}, Lio/bidmachine/TrackEventType;->values()[Lio/bidmachine/TrackEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 84
    iget v4, v3, Lio/bidmachine/TrackEventType;->ortbValue:I

    if-eq v4, p0, :cond_1

    iget v4, v3, Lio/bidmachine/TrackEventType;->ortbExtValue:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/TrackEventType;
    .locals 1

    .line 11
    const-class v0, Lio/bidmachine/TrackEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/TrackEventType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/TrackEventType;
    .locals 1

    .line 11
    sget-object v0, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    invoke-virtual {v0}, [Lio/bidmachine/TrackEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/TrackEventType;

    return-object v0
.end method


# virtual methods
.method public getOrtbActionValue()I
    .locals 1

    .line 92
    iget v0, p0, Lio/bidmachine/TrackEventType;->ortbActionValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/TrackEventType;->name()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/TrackEventType;->ortbExtValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
