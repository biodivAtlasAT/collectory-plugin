<%@ page import="au.org.ala.collectory.ProviderGroup" %>
<div class="show-section  well">
  <h2><g:message code="shared.providersList.title01" /></h2>
  <p><g:message code="shared.providersList.des01" args="[ProviderGroup.textFormOfEntityType(instance.uid)]" /></p>
  <ul class="fancy">
    <g:each in="${instance.listProviders()}" var="prov">
      <g:set var="pg" value="${ProviderGroup._get(prov)}"/>
      <g:if test="${pg}">
        <g:set var="isProvider" value="${prov[0..1] == 'dp'}"/>
        <li><g:link controller="public" action="show" id="${prov}">${pg.name}</g:link>
        <g:if test="${isProvider}">
          (<g:message code="shared.providersList.provider" />)
        </g:if>
        <g:else>
          (<g:message code="shared.providersList.resource" />)
        </g:else>
        </li>
        <g:if test="${isProvider}">
          <!-- list resources -->
          <ul class='resources'>
            <g:each in="${pg.resources}" var="res">
              <li>${res.name} (<g:message code="shared.providersList.resource" />)</li>
            </g:each>
          </ul>
        </g:if>
      </g:if>

    </g:each>
  </ul>
  <div style="clear:both;"></div>
</div>
