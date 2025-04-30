window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.action === "openPager") {
        document.getElementById('pager').classList.remove('hidden');
        document.getElementById('callType').innerText = data.callType;
        document.getElementById('callStreet').innerText = data.callStreet;
        window.pagerConfig = {
            acceptKey: data.acceptKey,
            declineKey: data.declineKey
        };
    }
    if (data.action === "closePager") {
        document.getElementById('pager').classList.add('hidden');
    }
});

document.addEventListener('keydown', function(event) {
    if (!window.pagerConfig) return;

    if (event.code === window.pagerConfig.acceptKey) {
        acceptCall();
    }
    if (event.code === window.pagerConfig.declineKey) {
        declineCall();
    }
});

function acceptCall() {
    fetch(`https://${GetParentResourceName()}/acceptCall`, { method: 'POST' });
    document.getElementById('pager').classList.add('hidden');
}

function declineCall() {
    fetch(`https://${GetParentResourceName()}/declineCall`, { method: 'POST' });
    document.getElementById('pager').classList.add('hidden');
}
