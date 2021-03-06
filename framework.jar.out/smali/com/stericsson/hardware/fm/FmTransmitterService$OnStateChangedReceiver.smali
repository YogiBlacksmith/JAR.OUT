.class final Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnStateChangedReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    .line 77
    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "FmTransmitterService"

    const-string v1, "FM transmitter listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$000(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$000(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 105
    :cond_0
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnStateChanged(II)Z
    .locals 3
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 86
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->onStateChanged(II)V

    .line 88
    monitor-exit p0

    .line 93
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitterService"

    const-string v2, "callOnStateChanged: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    return-object v0
.end method
