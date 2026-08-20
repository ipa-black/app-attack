package org.apache.mina.protocol.vmpipe;

import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.common.SessionConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class VmPipeIdleStatusChecker {
    static final VmPipeIdleStatusChecker INSTANCE = new VmPipeIdleStatusChecker();
    private final Map sessions = new IdentityHashMap();
    private final Worker worker;

    private VmPipeIdleStatusChecker() {
        Worker worker = new Worker();
        this.worker = worker;
        worker.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSession(VmPipeSession vmPipeSession) {
        synchronized (this.sessions) {
            this.sessions.put(vmPipeSession, vmPipeSession);
        }
    }

    /* loaded from: classes5.dex */
    private class Worker extends Thread {
        private Worker() {
            super("VmPipeIdleStatusChecker");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                }
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (VmPipeIdleStatusChecker.this.sessions) {
                    Iterator it = VmPipeIdleStatusChecker.this.sessions.keySet().iterator();
                    while (it.hasNext()) {
                        VmPipeSession vmPipeSession = (VmPipeSession) it.next();
                        if (!vmPipeSession.isConnected()) {
                            it.remove();
                        } else {
                            SessionConfig config = vmPipeSession.getConfig();
                            boolean z = true;
                            if (!vmPipeSession.isIdle(IdleStatus.BOTH_IDLE)) {
                                long idleTimeInMillis = config.getIdleTimeInMillis(IdleStatus.BOTH_IDLE);
                                vmPipeSession.setIdle(IdleStatus.BOTH_IDLE, idleTimeInMillis > 0 && currentTimeMillis - vmPipeSession.getLastIoTime() > idleTimeInMillis);
                                if (vmPipeSession.isIdle(IdleStatus.BOTH_IDLE)) {
                                    vmPipeSession.getManagerFilterChain().sessionIdle(vmPipeSession, IdleStatus.BOTH_IDLE);
                                }
                            }
                            if (!vmPipeSession.isIdle(IdleStatus.READER_IDLE)) {
                                long idleTimeInMillis2 = config.getIdleTimeInMillis(IdleStatus.READER_IDLE);
                                vmPipeSession.setIdle(IdleStatus.READER_IDLE, idleTimeInMillis2 > 0 && currentTimeMillis - vmPipeSession.getLastReadTime() > idleTimeInMillis2);
                                if (vmPipeSession.isIdle(IdleStatus.READER_IDLE)) {
                                    vmPipeSession.getManagerFilterChain().sessionIdle(vmPipeSession, IdleStatus.READER_IDLE);
                                }
                            }
                            if (!vmPipeSession.isIdle(IdleStatus.WRITER_IDLE)) {
                                long idleTimeInMillis3 = config.getIdleTimeInMillis(IdleStatus.WRITER_IDLE);
                                IdleStatus idleStatus = IdleStatus.WRITER_IDLE;
                                if (idleTimeInMillis3 <= 0 || currentTimeMillis - vmPipeSession.getLastWriteTime() <= idleTimeInMillis3) {
                                    z = false;
                                }
                                vmPipeSession.setIdle(idleStatus, z);
                                if (vmPipeSession.isIdle(IdleStatus.WRITER_IDLE)) {
                                    vmPipeSession.getManagerFilterChain().sessionIdle(vmPipeSession, IdleStatus.WRITER_IDLE);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
