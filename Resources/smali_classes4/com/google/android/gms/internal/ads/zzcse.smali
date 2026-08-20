.class final Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfey;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcre;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcse;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzcsd;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zze:Lcom/google/android/gms/internal/ads/zzcse;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzd:Lcom/google/android/gms/internal/ads/zzcre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzc:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzaq(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzesc;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzesc;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzesh;->zza()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjl;->zza()Lcom/google/android/gms/internal/ads/zzdjl;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzj:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzM(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzI(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfji;->zza()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfew;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfew;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzk:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzerh;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzerh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzc:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzk:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfev;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzesb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzd:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcre;->zzD(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzcpm;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpm;->zzd()Lcom/google/android/gms/internal/ads/zzchu;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhex;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzerh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfev;Lcom/google/android/gms/internal/ads/zzesb;Lcom/google/android/gms/internal/ads/zzchu;)V

    return-object v7
.end method
