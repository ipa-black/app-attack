.class final Lcom/google/android/gms/internal/ads/zzcto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcre;

.field private zzb:Lcom/google/android/gms/internal/ads/zzddz;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzctn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcto;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzb:Lcom/google/android/gms/internal/ads/zzddz;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzh;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzb:Lcom/google/android/gms/internal/ads/zzddz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzddz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcto;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdbw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdbw;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdzu;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdzu;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcto;->zzb:Lcom/google/android/gms/internal/ads/zzddz;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzctq;-><init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzdzu;Lcom/google/android/gms/internal/ads/zzddz;Lcom/google/android/gms/internal/ads/zzfgg;Lcom/google/android/gms/internal/ads/zzffh;Lcom/google/android/gms/internal/ads/zzctp;)V

    return-object v0
.end method
